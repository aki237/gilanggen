LANG := c3
FILTER := 'languages/${LANG}/filters'
ALIASES := 'languages/${LANG}/aliases'
TEMPLATE := 'languages/${LANG}/output.tmpl'

all: adw

gilanggen: record.go main.go methods.go
	@go build

base: gilanggen src/gobject.${LANG} src/glib.${LANG}
io: base src/gio.${LANG} src/gmodule.${LANG}
gdk: io src/gdkpixbuf.${LANG} src/cairo.${LANG} src/pango.${LANG} src/pangocairo.${LANG} src/gdk.${LANG}
gsk: gdk src/graphene.${LANG} src/gsk.${LANG}
gtk: gsk src/gtk.${LANG}
adw: gtk src/adw.${LANG}

src/gobject.${LANG}: source/GObject-2.0.gir
	@./gilanggen -template ${TEMPLATE} -filter ${FILTER} -aliases ${ALIASES} $< > $@

src/glib.${LANG}: manual/${LANG}/glib.${LANG}
	@cp $< $@

src/gio.${LANG}: source/Gio-2.0.gir
	@./gilanggen -template ${TEMPLATE} -filter ${FILTER} -aliases ${ALIASES} $< > $@

src/gmodule.${LANG}: manual/${LANG}/gmodule.${LANG}
	@cp $< $@

src/cairo.${LANG}: manual/${LANG}/cairo.${LANG}
	@cp $< $@

src/pango.${LANG}: manual/${LANG}/pango.${LANG}
	@cp $< $@

src/pangocairo.${LANG}: manual/${LANG}/pangocairo.${LANG}
	@cp $< $@

src/gdkpixbuf.${LANG}: source/GdkPixbuf-2.0.gir
	@./gilanggen -template ${TEMPLATE} -imports 'gobject,glib' -filter ${FILTER} -aliases ${ALIASES} $< > $@

src/gdk.${LANG}: source/Gdk-4.0.gir
	@./gilanggen -template ${TEMPLATE} -imports 'glib,gobject' -filter ${FILTER} -aliases ${ALIASES} $< > $@

src/graphene.${LANG}: source/Graphene-1.0.gir
	@./gilanggen -template ${TEMPLATE} -filter ${FILTER} -aliases ${ALIASES} $< > $@

src/gsk.${LANG}: source/Gsk-4.0.gir
	@./gilanggen -template ${TEMPLATE} -imports 'glib,gobject,cairo,pango' -filter ${FILTER} -aliases ${ALIASES} $< > $@

src/gtk.${LANG}: source/Gtk-4.0.gir
	@./gilanggen -template ${TEMPLATE} -imports 'gobject,glib,gio,pango,cairo,graphene,gdkpixbuf' -filter ${FILTER} -aliases ${ALIASES} $< > $@

src/adw.${LANG}: source/Adw-1.gir
	@./gilanggen -template ${TEMPLATE} -imports 'gobject,glib,gdk,pango' -filter ${FILTER} -aliases ${ALIASES} $< > $@

clean:
	@rm src/*
	@rm gilanggen
