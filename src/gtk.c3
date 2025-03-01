
///START MODULE gtk
module gtk;

import gobject;

import glib;

import gio;

import pango;

import cairo;

import graphene;

import gdkpixbuf;

import gdk;

import gsk;


enum ApplicationInhibitFlags : int (inline int s) {
  IDLE = 8,
  LOGOUT = 1,
  SUSPEND = 4,
  SWITCH = 2,
}

enum BuilderClosureFlags : int (inline int s) {
  SWAPPED = 1,
}

enum CellRendererState : int (inline int s) {
  EXPANDABLE = 32,
  EXPANDED = 64,
  FOCUSED = 16,
  INSENSITIVE = 4,
  PRELIT = 2,
  SELECTED = 1,
  SORTED = 8,
}

enum DebugFlags : int (inline int s) {
  A11Y = 131072,
  ACTIONS = 4096,
  BUILDER = 128,
  BUILDER_OBJECTS = 65536,
  CONSTRAINTS = 32768,
  CSS = 1048576,
  GEOMETRY = 16,
  ICONFALLBACK = 262144,
  ICONTHEME = 32,
  INTERACTIVE = 1024,
  INVERT_TEXT_DIR = 524288,
  KEYBINDINGS = 4,
  LAYOUT = 8192,
  MODULES = 8,
  NO_CSS_CACHE = 512,
  PRINTING = 64,
  SIZE_REQUEST = 256,
  SNAPSHOT = 16384,
  TEXT = 1,
  TREE = 2,
}

enum DialogFlags : int (inline int s) {
  DESTROY_WITH_PARENT = 2,
  MODAL = 1,
  USE_HEADER_BAR = 4,
}

enum EventControllerScrollFlags : int (inline int s) {
  BOTH_AXES = 3,
  DISCRETE = 4,
  HORIZONTAL = 2,
  KINETIC = 8,
  NONE = 0,
  VERTICAL = 1,
}

enum FontChooserLevel : int (inline int s) {
  FAMILY = 0,
  FEATURES = 8,
  SIZE = 2,
  STYLE = 1,
  VARIATIONS = 4,
}

enum IconLookupFlags : int (inline int s) {
  FORCE_REGULAR = 1,
  FORCE_SYMBOLIC = 2,
  PRELOAD = 4,
}

enum InputHints : int (inline int s) {
  EMOJI = 512,
  INHIBIT_OSK = 128,
  LOWERCASE = 8,
  NONE = 0,
  NO_EMOJI = 1024,
  NO_SPELLCHECK = 2,
  PRIVATE = 2048,
  SPELLCHECK = 1,
  UPPERCASE_CHARS = 16,
  UPPERCASE_SENTENCES = 64,
  UPPERCASE_WORDS = 32,
  VERTICAL_WRITING = 256,
  WORD_COMPLETION = 4,
}

enum ListScrollFlags : int (inline int s) {
  FOCUS = 1,
  NONE = 0,
  SELECT = 2,
}

enum PickFlags : int (inline int s) {
  DEFAULT = 0,
  INSENSITIVE = 1,
  NON_TARGETABLE = 2,
}

enum PopoverMenuFlags : int (inline int s) {
  NESTED = 1,
  SLIDING = 0,
}

enum PrintCapabilities : int (inline int s) {
  COLLATE = 4,
  COPIES = 2,
  GENERATE_PDF = 32,
  GENERATE_PS = 64,
  NUMBER_UP = 256,
  NUMBER_UP_LAYOUT = 512,
  PAGE_SET = 1,
  PREVIEW = 128,
  REVERSE = 8,
  SCALE = 16,
}

enum ShortcutActionFlags : int (inline int s) {
  EXCLUSIVE = 1,
}

enum StateFlags : int (inline int s) {
  ACTIVE = 1,
  BACKDROP = 64,
  CHECKED = 2048,
  DIR_LTR = 128,
  DIR_RTL = 256,
  DROP_ACTIVE = 4096,
  FOCUSED = 32,
  FOCUS_VISIBLE = 8192,
  FOCUS_WITHIN = 16384,
  INCONSISTENT = 16,
  INSENSITIVE = 8,
  LINK = 512,
  NORMAL = 0,
  PRELIGHT = 2,
  SELECTED = 4,
  VISITED = 1024,
}

enum StyleContextPrintFlags : int (inline int s) {
  NONE = 0,
  RECURSE = 1,
  SHOW_CHANGE = 4,
  SHOW_STYLE = 2,
}

enum TextBufferNotifyFlags : int (inline int s) {
  AFTER_DELETE = 8,
  AFTER_INSERT = 2,
  BEFORE_DELETE = 4,
  BEFORE_INSERT = 1,
}

enum TextSearchFlags : int (inline int s) {
  CASE_INSENSITIVE = 4,
  TEXT_ONLY = 2,
  VISIBLE_ONLY = 1,
}

enum TreeModelFlags : int (inline int s) {
  ITERS_PERSIST = 1,
  LIST_ONLY = 2,
}

enum AccessibleAnnouncementPriority : int (inline int s) {
  HIGH = 2,
  LOW = 0,
  MEDIUM = 1,
}

enum AccessibleAutocomplete : int (inline int s) {
  BOTH = 3,
  INLINE = 1,
  LIST = 2,
  NONE = 0,
}

enum AccessibleInvalidState : int (inline int s) {
  FALSE = 0,
  GRAMMAR = 2,
  SPELLING = 3,
  TRUE = 1,
}

enum AccessiblePlatformState : int (inline int s) {
  ACTIVE = 2,
  FOCUSABLE = 0,
  FOCUSED = 1,
}

enum AccessibleProperty : int (inline int s) {
  AUTOCOMPLETE = 0,
  DESCRIPTION = 1,
  HAS_POPUP = 2,
  HELP_TEXT = 19,
  KEY_SHORTCUTS = 3,
  LABEL = 4,
  LEVEL = 5,
  MODAL = 6,
  MULTI_LINE = 7,
  MULTI_SELECTABLE = 8,
  ORIENTATION = 9,
  PLACEHOLDER = 10,
  READ_ONLY = 11,
  REQUIRED = 12,
  ROLE_DESCRIPTION = 13,
  SORT = 14,
  VALUE_MAX = 15,
  VALUE_MIN = 16,
  VALUE_NOW = 17,
  VALUE_TEXT = 18,
}

enum AccessibleRelation : int (inline int s) {
  ACTIVE_DESCENDANT = 0,
  COL_COUNT = 1,
  COL_INDEX = 2,
  COL_INDEX_TEXT = 3,
  COL_SPAN = 4,
  CONTROLS = 5,
  DESCRIBED_BY = 6,
  DETAILS = 7,
  ERROR_MESSAGE = 8,
  FLOW_TO = 9,
  LABELLED_BY = 10,
  OWNS = 11,
  POS_IN_SET = 12,
  ROW_COUNT = 13,
  ROW_INDEX = 14,
  ROW_INDEX_TEXT = 15,
  ROW_SPAN = 16,
  SET_SIZE = 17,
}

enum AccessibleRole : int (inline int s) {
  ALERT = 0,
  ALERT_DIALOG = 1,
  APPLICATION = 79,
  ARTICLE = 82,
  BANNER = 2,
  BLOCK_QUOTE = 81,
  BUTTON = 3,
  CAPTION = 4,
  CELL = 5,
  CHECKBOX = 6,
  COLUMN_HEADER = 7,
  COMBO_BOX = 8,
  COMMAND = 9,
  COMMENT = 83,
  COMPOSITE = 10,
  DIALOG = 11,
  DOCUMENT = 12,
  FEED = 13,
  FORM = 14,
  GENERIC = 15,
  GRID = 16,
  GRID_CELL = 17,
  GROUP = 18,
  HEADING = 19,
  IMG = 20,
  INPUT = 21,
  LABEL = 22,
  LANDMARK = 23,
  LEGEND = 24,
  LINK = 25,
  LIST = 26,
  LIST_BOX = 27,
  LIST_ITEM = 28,
  LOG = 29,
  MAIN = 30,
  MARQUEE = 31,
  MATH = 32,
  MENU = 34,
  MENU_BAR = 35,
  MENU_ITEM = 36,
  MENU_ITEM_CHECKBOX = 37,
  MENU_ITEM_RADIO = 38,
  METER = 33,
  NAVIGATION = 39,
  NONE = 40,
  NOTE = 41,
  OPTION = 42,
  PARAGRAPH = 80,
  PRESENTATION = 43,
  PROGRESS_BAR = 44,
  RADIO = 45,
  RADIO_GROUP = 46,
  RANGE = 47,
  REGION = 48,
  ROW = 49,
  ROW_GROUP = 50,
  ROW_HEADER = 51,
  SCROLLBAR = 52,
  SEARCH = 53,
  SEARCH_BOX = 54,
  SECTION = 55,
  SECTION_HEAD = 56,
  SELECT = 57,
  SEPARATOR = 58,
  SLIDER = 59,
  SPIN_BUTTON = 60,
  STATUS = 61,
  STRUCTURE = 62,
  SWITCH = 63,
  TAB = 64,
  TABLE = 65,
  TAB_LIST = 66,
  TAB_PANEL = 67,
  TERMINAL = 84,
  TEXT_BOX = 68,
  TIME = 69,
  TIMER = 70,
  TOGGLE_BUTTON = 78,
  TOOLBAR = 71,
  TOOLTIP = 72,
  TREE = 73,
  TREE_GRID = 74,
  TREE_ITEM = 75,
  WIDGET = 76,
  WINDOW = 77,
}

enum AccessibleSort : int (inline int s) {
  ASCENDING = 1,
  DESCENDING = 2,
  NONE = 0,
  OTHER = 3,
}

enum AccessibleState : int (inline int s) {
  BUSY = 0,
  CHECKED = 1,
  DISABLED = 2,
  EXPANDED = 3,
  HIDDEN = 4,
  INVALID = 5,
  PRESSED = 6,
  SELECTED = 7,
  VISITED = 8,
}

enum AccessibleTextContentChange : int (inline int s) {
  INSERT = 0,
  REMOVE = 1,
}

enum AccessibleTextGranularity : int (inline int s) {
  CHARACTER = 0,
  LINE = 3,
  PARAGRAPH = 4,
  SENTENCE = 2,
  WORD = 1,
}

enum AccessibleTristate : int (inline int s) {
  FALSE = 0,
  MIXED = 2,
  TRUE = 1,
}

enum Align : int (inline int s) {
  BASELINE = 4,
  BASELINE_CENTER = 5,
  BASELINE_FILL = 4,
  CENTER = 3,
  END = 2,
  FILL = 0,
  START = 1,
}

enum ArrowType : int (inline int s) {
  DOWN = 1,
  LEFT = 2,
  NONE = 4,
  RIGHT = 3,
  UP = 0,
}

enum AssistantPageType : int (inline int s) {
  CONFIRM = 2,
  CONTENT = 0,
  CUSTOM = 5,
  INTRO = 1,
  PROGRESS = 4,
  SUMMARY = 3,
}

enum BaselinePosition : int (inline int s) {
  BOTTOM = 2,
  CENTER = 1,
  TOP = 0,
}

enum BorderStyle : int (inline int s) {
  DASHED = 6,
  DOTTED = 5,
  DOUBLE = 7,
  GROOVE = 8,
  HIDDEN = 1,
  INSET = 3,
  NONE = 0,
  OUTSET = 4,
  RIDGE = 9,
  SOLID = 2,
}

enum BuilderError : int (inline int s) {
  DUPLICATE_ID = 8,
  INVALID_ATTRIBUTE = 3,
  INVALID_FUNCTION = 14,
  INVALID_ID = 13,
  INVALID_PROPERTY = 11,
  INVALID_SIGNAL = 12,
  INVALID_TAG = 4,
  INVALID_TYPE_FUNCTION = 0,
  INVALID_VALUE = 6,
  MISSING_ATTRIBUTE = 2,
  MISSING_PROPERTY_VALUE = 5,
  OBJECT_TYPE_REFUSED = 9,
  TEMPLATE_MISMATCH = 10,
  UNHANDLED_TAG = 1,
  VERSION_MISMATCH = 7,
}

enum ButtonsType : int (inline int s) {
  CANCEL = 3,
  CLOSE = 2,
  NONE = 0,
  OK = 1,
  OK_CANCEL = 5,
  YES_NO = 4,
}

enum CellRendererAccelMode : int (inline int s) {
  GTK = 0,
  OTHER = 1,
}

enum CellRendererMode : int (inline int s) {
  ACTIVATABLE = 1,
  EDITABLE = 2,
  INERT = 0,
}

enum Collation : int (inline int s) {
  FILENAME = 2,
  NONE = 0,
  UNICODE = 1,
}

enum ConstraintAttribute : int (inline int s) {
  BASELINE = 11,
  BOTTOM = 4,
  CENTER_X = 9,
  CENTER_Y = 10,
  END = 6,
  HEIGHT = 8,
  LEFT = 1,
  NONE = 0,
  RIGHT = 2,
  START = 5,
  TOP = 3,
  WIDTH = 7,
}

enum ConstraintRelation : int (inline int s) {
  EQ = 0,
  GE = 1,
  LE = -1,
}

enum ConstraintStrength : int (inline int s) {
  MEDIUM = 1000,
  REQUIRED = 1001001000,
  STRONG = 1000000000,
  WEAK = 1,
}

enum ConstraintVflParserError : int (inline int s) {
  ATTRIBUTE = 1,
  METRIC = 3,
  PRIORITY = 4,
  RELATION = 5,
  SYMBOL = 0,
  VIEW = 2,
}

enum ContentFit : int (inline int s) {
  CONTAIN = 1,
  COVER = 2,
  FILL = 0,
  SCALE_DOWN = 3,
}

enum CornerType : int (inline int s) {
  BOTTOM_LEFT = 1,
  BOTTOM_RIGHT = 3,
  TOP_LEFT = 0,
  TOP_RIGHT = 2,
}

enum CssParserError : int (inline int s) {
  FAILED = 0,
  IMPORT = 2,
  NAME = 3,
  SYNTAX = 1,
  UNKNOWN_VALUE = 4,
}

enum CssParserWarning : int (inline int s) {
  DEPRECATED = 0,
  SYNTAX = 1,
  UNIMPLEMENTED = 2,
}

enum DeleteType : int (inline int s) {
  CHARS = 0,
  DISPLAY_LINES = 3,
  DISPLAY_LINE_ENDS = 4,
  PARAGRAPHS = 6,
  PARAGRAPH_ENDS = 5,
  WHITESPACE = 7,
  WORDS = 2,
  WORD_ENDS = 1,
}

enum DialogError : int (inline int s) {
  CANCELLED = 1,
  DISMISSED = 2,
  FAILED = 0,
}

enum DirectionType : int (inline int s) {
  DOWN = 3,
  LEFT = 4,
  RIGHT = 5,
  TAB_BACKWARD = 1,
  TAB_FORWARD = 0,
  UP = 2,
}

enum EditableProperties : int (inline int s) {
  NUM_PROPERTIES = 8,
  PROP_CURSOR_POSITION = 1,
  PROP_EDITABLE = 3,
  PROP_ENABLE_UNDO = 7,
  PROP_MAX_WIDTH_CHARS = 5,
  PROP_SELECTION_BOUND = 2,
  PROP_TEXT = 0,
  PROP_WIDTH_CHARS = 4,
  PROP_XALIGN = 6,
}

enum EntryIconPosition : int (inline int s) {
  PRIMARY = 0,
  SECONDARY = 1,
}

enum EventSequenceState : int (inline int s) {
  CLAIMED = 1,
  DENIED = 2,
  NONE = 0,
}

enum FileChooserAction : int (inline int s) {
  OPEN = 0,
  SAVE = 1,
  SELECT_FOLDER = 2,
}

enum FileChooserError : int (inline int s) {
  ALREADY_EXISTS = 2,
  BAD_FILENAME = 1,
  INCOMPLETE_HOSTNAME = 3,
  NONEXISTENT = 0,
}

enum FilterChange : int (inline int s) {
  DIFFERENT = 0,
  LESS_STRICT = 1,
  MORE_STRICT = 2,
}

enum FilterMatch : int (inline int s) {
  ALL = 2,
  NONE = 1,
  SOME = 0,
}

enum FontLevel : int (inline int s) {
  FACE = 1,
  FAMILY = 0,
  FEATURES = 3,
  FONT = 2,
}

enum FontRendering : int (inline int s) {
  AUTOMATIC = 0,
  MANUAL = 1,
}

enum GraphicsOffloadEnabled : int (inline int s) {
  DISABLED = 1,
  ENABLED = 0,
}

enum IconSize : int (inline int s) {
  INHERIT = 0,
  LARGE = 2,
  NORMAL = 1,
}

enum IconThemeError : int (inline int s) {
  FAILED = 1,
  NOT_FOUND = 0,
}

enum IconViewDropPosition : int (inline int s) {
  DROP_ABOVE = 4,
  DROP_BELOW = 5,
  DROP_INTO = 1,
  DROP_LEFT = 2,
  DROP_RIGHT = 3,
  NO_DROP = 0,
}

enum ImageType : int (inline int s) {
  EMPTY = 0,
  GICON = 2,
  ICON_NAME = 1,
  PAINTABLE = 3,
}

enum InputPurpose : int (inline int s) {
  ALPHA = 1,
  DIGITS = 2,
  EMAIL = 6,
  FREE_FORM = 0,
  NAME = 7,
  NUMBER = 3,
  PASSWORD = 8,
  PHONE = 4,
  PIN = 9,
  TERMINAL = 10,
  URL = 5,
}

enum InscriptionOverflow : int (inline int s) {
  CLIP = 0,
  ELLIPSIZE_END = 3,
  ELLIPSIZE_MIDDLE = 2,
  ELLIPSIZE_START = 1,
}

enum Justification : int (inline int s) {
  CENTER = 2,
  FILL = 3,
  LEFT = 0,
  RIGHT = 1,
}

enum LevelBarMode : int (inline int s) {
  CONTINUOUS = 0,
  DISCRETE = 1,
}

enum License : int (inline int s) {
  AGPL_3_0 = 13,
  AGPL_3_0_ONLY = 14,
  APACHE_2_0 = 16,
  ARTISTIC = 8,
  BSD = 6,
  BSD_3 = 15,
  CUSTOM = 1,
  GPL_2_0 = 2,
  GPL_2_0_ONLY = 9,
  GPL_3_0 = 3,
  GPL_3_0_ONLY = 10,
  LGPL_2_1 = 4,
  LGPL_2_1_ONLY = 11,
  LGPL_3_0 = 5,
  LGPL_3_0_ONLY = 12,
  LICENSE_0BSD = 18,
  MIT_X11 = 7,
  MPL_2_0 = 17,
  UNKNOWN = 0,
}

enum ListTabBehavior : int (inline int s) {
  ALL = 0,
  CELL = 2,
  ITEM = 1,
}

enum MessageType : int (inline int s) {
  ERROR = 3,
  INFO = 0,
  OTHER = 4,
  QUESTION = 2,
  WARNING = 1,
}

enum MovementStep : int (inline int s) {
  BUFFER_ENDS = 8,
  DISPLAY_LINES = 3,
  DISPLAY_LINE_ENDS = 4,
  HORIZONTAL_PAGES = 9,
  LOGICAL_POSITIONS = 0,
  PAGES = 7,
  PARAGRAPHS = 5,
  PARAGRAPH_ENDS = 6,
  VISUAL_POSITIONS = 1,
  WORDS = 2,
}

enum NaturalWrapMode : int (inline int s) {
  INHERIT = 0,
  NONE = 1,
  WORD = 2,
}

enum NotebookTab : int (inline int s) {
  FIRST = 0,
  LAST = 1,
}

enum NumberUpLayout : int (inline int s) {
  BTLR = 6,
  BTRL = 7,
  LRBT = 1,
  LRTB = 0,
  RLBT = 3,
  RLTB = 2,
  TBLR = 4,
  TBRL = 5,
}

enum Ordering : int (inline int s) {
  EQUAL = 0,
  LARGER = 1,
  SMALLER = -1,
}

enum Orientation : int (inline int s) {
  HORIZONTAL = 0,
  VERTICAL = 1,
}

enum Overflow : int (inline int s) {
  HIDDEN = 1,
  VISIBLE = 0,
}

enum PackType : int (inline int s) {
  END = 1,
  START = 0,
}

enum PadActionType : int (inline int s) {
  BUTTON = 0,
  RING = 1,
  STRIP = 2,
}

enum PageOrientation : int (inline int s) {
  LANDSCAPE = 1,
  PORTRAIT = 0,
  REVERSE_LANDSCAPE = 3,
  REVERSE_PORTRAIT = 2,
}

enum PageSet : int (inline int s) {
  ALL = 0,
  EVEN = 1,
  ODD = 2,
}

enum PanDirection : int (inline int s) {
  DOWN = 3,
  LEFT = 0,
  RIGHT = 1,
  UP = 2,
}

enum PolicyType : int (inline int s) {
  ALWAYS = 0,
  AUTOMATIC = 1,
  EXTERNAL = 3,
  NEVER = 2,
}

enum PositionType : int (inline int s) {
  BOTTOM = 3,
  LEFT = 0,
  RIGHT = 1,
  TOP = 2,
}

enum PrintDuplex : int (inline int s) {
  HORIZONTAL = 1,
  SIMPLEX = 0,
  VERTICAL = 2,
}

enum PrintError : int (inline int s) {
  GENERAL = 0,
  INTERNAL_ERROR = 1,
  INVALID_FILE = 3,
  NOMEM = 2,
}

enum PrintOperationAction : int (inline int s) {
  EXPORT = 3,
  PREVIEW = 2,
  PRINT = 1,
  PRINT_DIALOG = 0,
}

enum PrintOperationResult : int (inline int s) {
  APPLY = 1,
  CANCEL = 2,
  ERROR = 0,
  IN_PROGRESS = 3,
}

enum PrintPages : int (inline int s) {
  ALL = 0,
  CURRENT = 1,
  RANGES = 2,
  SELECTION = 3,
}

enum PrintQuality : int (inline int s) {
  DRAFT = 3,
  HIGH = 2,
  LOW = 0,
  NORMAL = 1,
}

enum PrintStatus : int (inline int s) {
  FINISHED = 7,
  FINISHED_ABORTED = 8,
  GENERATING_DATA = 2,
  INITIAL = 0,
  PENDING = 4,
  PENDING_ISSUE = 5,
  PREPARING = 1,
  PRINTING = 6,
  SENDING_DATA = 3,
}

enum PropagationLimit : int (inline int s) {
  NONE = 0,
  SAME_NATIVE = 1,
}

enum PropagationPhase : int (inline int s) {
  BUBBLE = 2,
  CAPTURE = 1,
  NONE = 0,
  TARGET = 3,
}

enum RecentManagerError : int (inline int s) {
  INVALID_ENCODING = 2,
  INVALID_URI = 1,
  NOT_FOUND = 0,
  NOT_REGISTERED = 3,
  READ = 4,
  UNKNOWN = 6,
  WRITE = 5,
}

enum ResponseType : int (inline int s) {
  ACCEPT = -3,
  APPLY = -10,
  CANCEL = -6,
  CLOSE = -7,
  DELETE_EVENT = -4,
  HELP = -11,
  NO = -9,
  NONE = -1,
  OK = -5,
  REJECT = -2,
  YES = -8,
}

enum RevealerTransitionType : int (inline int s) {
  CROSSFADE = 1,
  NONE = 0,
  SLIDE_DOWN = 5,
  SLIDE_LEFT = 3,
  SLIDE_RIGHT = 2,
  SLIDE_UP = 4,
  SWING_DOWN = 9,
  SWING_LEFT = 7,
  SWING_RIGHT = 6,
  SWING_UP = 8,
}

enum ScrollStep : int (inline int s) {
  ENDS = 2,
  HORIZONTAL_ENDS = 5,
  HORIZONTAL_PAGES = 4,
  HORIZONTAL_STEPS = 3,
  PAGES = 1,
  STEPS = 0,
}

enum ScrollType : int (inline int s) {
  END = 15,
  JUMP = 1,
  NONE = 0,
  PAGE_BACKWARD = 4,
  PAGE_DOWN = 9,
  PAGE_FORWARD = 5,
  PAGE_LEFT = 12,
  PAGE_RIGHT = 13,
  PAGE_UP = 8,
  START = 14,
  STEP_BACKWARD = 2,
  STEP_DOWN = 7,
  STEP_FORWARD = 3,
  STEP_LEFT = 10,
  STEP_RIGHT = 11,
  STEP_UP = 6,
}

enum ScrollablePolicy : int (inline int s) {
  MINIMUM = 0,
  NATURAL = 1,
}

enum SelectionMode : int (inline int s) {
  BROWSE = 2,
  MULTIPLE = 3,
  NONE = 0,
  SINGLE = 1,
}

enum SensitivityType : int (inline int s) {
  AUTO = 0,
  OFF = 2,
  ON = 1,
}

enum ShortcutScope : int (inline int s) {
  GLOBAL = 2,
  LOCAL = 0,
  MANAGED = 1,
}

enum ShortcutType : int (inline int s) {
  ACCELERATOR = 0,
  GESTURE = 7,
  GESTURE_PINCH = 1,
  GESTURE_ROTATE_CLOCKWISE = 3,
  GESTURE_ROTATE_COUNTERCLOCKWISE = 4,
  GESTURE_STRETCH = 2,
  GESTURE_SWIPE_LEFT = 8,
  GESTURE_SWIPE_RIGHT = 9,
  GESTURE_TWO_FINGER_SWIPE_LEFT = 5,
  GESTURE_TWO_FINGER_SWIPE_RIGHT = 6,
}

enum SizeGroupMode : int (inline int s) {
  BOTH = 3,
  HORIZONTAL = 1,
  NONE = 0,
  VERTICAL = 2,
}

enum SizeRequestMode : int (inline int s) {
  CONSTANT_SIZE = 2,
  HEIGHT_FOR_WIDTH = 0,
  WIDTH_FOR_HEIGHT = 1,
}

enum SortType : int (inline int s) {
  ASCENDING = 0,
  DESCENDING = 1,
}

enum SorterChange : int (inline int s) {
  DIFFERENT = 0,
  INVERTED = 1,
  LESS_STRICT = 2,
  MORE_STRICT = 3,
}

enum SorterOrder : int (inline int s) {
  NONE = 1,
  PARTIAL = 0,
  TOTAL = 2,
}

enum SpinButtonUpdatePolicy : int (inline int s) {
  ALWAYS = 0,
  IF_VALID = 1,
}

enum SpinType : int (inline int s) {
  END = 5,
  HOME = 4,
  PAGE_BACKWARD = 3,
  PAGE_FORWARD = 2,
  STEP_BACKWARD = 1,
  STEP_FORWARD = 0,
  USER_DEFINED = 6,
}

enum StackTransitionType : int (inline int s) {
  CROSSFADE = 1,
  NONE = 0,
  OVER_DOWN = 9,
  OVER_DOWN_UP = 17,
  OVER_LEFT = 10,
  OVER_LEFT_RIGHT = 18,
  OVER_RIGHT = 11,
  OVER_RIGHT_LEFT = 19,
  OVER_UP = 8,
  OVER_UP_DOWN = 16,
  ROTATE_LEFT = 20,
  ROTATE_LEFT_RIGHT = 22,
  ROTATE_RIGHT = 21,
  SLIDE_DOWN = 5,
  SLIDE_LEFT = 3,
  SLIDE_LEFT_RIGHT = 6,
  SLIDE_RIGHT = 2,
  SLIDE_UP = 4,
  SLIDE_UP_DOWN = 7,
  UNDER_DOWN = 13,
  UNDER_LEFT = 14,
  UNDER_RIGHT = 15,
  UNDER_UP = 12,
}

enum StringFilterMatchMode : int (inline int s) {
  EXACT = 0,
  PREFIX = 2,
  SUBSTRING = 1,
}

enum SymbolicColor : int (inline int s) {
  ERROR = 1,
  FOREGROUND = 0,
  SUCCESS = 3,
  WARNING = 2,
}

enum SystemSetting : int (inline int s) {
  DISPLAY = 3,
  DPI = 0,
  FONT_CONFIG = 2,
  FONT_NAME = 1,
  ICON_THEME = 4,
}

enum TextDirection : int (inline int s) {
  LTR = 1,
  NONE = 0,
  RTL = 2,
}

enum TextExtendSelection : int (inline int s) {
  LINE = 1,
  WORD = 0,
}

enum TextViewLayer : int (inline int s) {
  ABOVE_TEXT = 1,
  BELOW_TEXT = 0,
}

enum TextWindowType : int (inline int s) {
  BOTTOM = 6,
  LEFT = 3,
  RIGHT = 4,
  TEXT = 2,
  TOP = 5,
  WIDGET = 1,
}

enum TreeViewColumnSizing : int (inline int s) {
  AUTOSIZE = 1,
  FIXED = 2,
  GROW_ONLY = 0,
}

enum TreeViewDropPosition : int (inline int s) {
  AFTER = 1,
  BEFORE = 0,
  INTO_OR_AFTER = 3,
  INTO_OR_BEFORE = 2,
}

enum TreeViewGridLines : int (inline int s) {
  BOTH = 3,
  HORIZONTAL = 1,
  NONE = 0,
  VERTICAL = 2,
}

enum Unit : int (inline int s) {
  INCH = 2,
  MM = 3,
  NONE = 0,
  POINTS = 1,
}

enum WrapMode : int (inline int s) {
  CHAR = 1,
  NONE = 0,
  WORD = 2,
  WORD_CHAR = 3,
}



distinct ATContextClass = void*;

distinct AccessibleInterface = void*;

distinct AccessibleList = void*;

distinct AccessibleRangeInterface = void*;

distinct AccessibleTextInterface = void*;

distinct AccessibleTextRange = void*;

distinct ActionableInterface = void*;

distinct ActivateActionClass = void*;

distinct AdjustmentClass = void*;

distinct AlertDialogClass = void*;

distinct AlternativeTriggerClass = void*;

distinct AnyFilterClass = void*;

distinct ApplicationClass = void*;

distinct ApplicationWindowClass = void*;

distinct BinLayoutClass = void*;

distinct Bitset = void*;

distinct BitsetIter = void*;

distinct BookmarkListClass = void*;

distinct BoolFilterClass = void*;

distinct Border = void*;

distinct BoxClass = void*;

distinct BoxLayoutClass = void*;

distinct BuildableIface = void*;

distinct BuildableParseContext = void*;

distinct BuildableParser = void*;

distinct BuilderCScopeClass = void*;

distinct BuilderClass = void*;

distinct BuilderListItemFactoryClass = void*;

distinct BuilderScopeInterface = void*;

distinct ButtonClass = void*;

distinct ButtonPrivate = void*;

distinct CallbackActionClass = void*;

distinct CellAreaClass = void*;

distinct CellAreaContextClass = void*;

distinct CellAreaContextPrivate = void*;

distinct CellEditableIface = void*;

distinct CellLayoutIface = void*;

distinct CellRendererClass = void*;

distinct CellRendererClassPrivate = void*;

distinct CellRendererPrivate = void*;

distinct CellRendererTextClass = void*;

distinct CenterBoxClass = void*;

distinct CenterLayoutClass = void*;

distinct CheckButtonClass = void*;

distinct ColorChooserInterface = void*;

distinct ColorDialogButtonClass = void*;

distinct ColorDialogClass = void*;

distinct ColumnViewCellClass = void*;

distinct ColumnViewClass = void*;

distinct ColumnViewColumnClass = void*;

distinct ColumnViewRowClass = void*;

distinct ColumnViewSorterClass = void*;

distinct ComboBoxClass = void*;

distinct ConstraintClass = void*;

distinct ConstraintGuideClass = void*;

distinct ConstraintLayoutChildClass = void*;

distinct ConstraintLayoutClass = void*;

distinct ConstraintTargetInterface = void*;

distinct CssLocation = void*;

distinct CssProviderClass = void*;

distinct CssProviderPrivate = void*;

distinct CssSection = void*;

distinct CssStyleChange = void*;

distinct CustomFilterClass = void*;

distinct CustomLayoutClass = void*;

distinct CustomSorterClass = void*;

distinct DialogClass = void*;

distinct DirectoryListClass = void*;

distinct DragIconClass = void*;

distinct DragSourceClass = void*;

distinct DrawingAreaClass = void*;

distinct DropControllerMotionClass = void*;

distinct DropDownClass = void*;

distinct DropTargetAsyncClass = void*;

distinct DropTargetClass = void*;

distinct EditableInterface = void*;

distinct EditableLabelClass = void*;

distinct EmojiChooserClass = void*;

distinct EntryBufferClass = void*;

distinct EntryClass = void*;

distinct EventControllerClass = void*;

distinct EventControllerFocusClass = void*;

distinct EventControllerKeyClass = void*;

distinct EventControllerLegacyClass = void*;

distinct EventControllerMotionClass = void*;

distinct EventControllerScrollClass = void*;

distinct EveryFilterClass = void*;

distinct ExpressionWatch = void*;

distinct FileChooserNativeClass = void*;

distinct FileDialogClass = void*;

distinct FileLauncherClass = void*;

distinct FilterClass = void*;

distinct FilterListModelClass = void*;

distinct FixedClass = void*;

distinct FixedLayoutChildClass = void*;

distinct FixedLayoutClass = void*;

distinct FlattenListModelClass = void*;

distinct FlowBoxChildClass = void*;

distinct FontChooserIface = void*;

distinct FontDialogButtonClass = void*;

distinct FontDialogClass = void*;

distinct FrameClass = void*;

distinct GLAreaClass = void*;

distinct GestureClass = void*;

distinct GestureClickClass = void*;

distinct GestureDragClass = void*;

distinct GestureLongPressClass = void*;

distinct GesturePanClass = void*;

distinct GestureRotateClass = void*;

distinct GestureSingleClass = void*;

distinct GestureStylusClass = void*;

distinct GestureSwipeClass = void*;

distinct GestureZoomClass = void*;

distinct GraphicsOffloadClass = void*;

distinct GridClass = void*;

distinct GridLayoutChildClass = void*;

distinct GridLayoutClass = void*;

distinct GridViewClass = void*;

distinct IMContextClass = void*;

distinct IMContextSimpleClass = void*;

distinct IMContextSimplePrivate = void*;

distinct IMMulticontextClass = void*;

distinct IMMulticontextPrivate = void*;

distinct InscriptionClass = void*;

distinct KeyvalTriggerClass = void*;

distinct LayoutChildClass = void*;

distinct LayoutManagerClass = void*;

distinct ListBaseClass = void*;

distinct ListBoxRowClass = void*;

distinct ListHeaderClass = void*;

distinct ListItemClass = void*;

distinct ListItemFactoryClass = void*;

distinct ListStoreClass = void*;

distinct ListStorePrivate = void*;

distinct ListViewClass = void*;

distinct MapListModelClass = void*;

distinct MediaControlsClass = void*;

distinct MediaFileClass = void*;

distinct MediaStreamClass = void*;

distinct MessageDialogClass = void*;

distinct MnemonicActionClass = void*;

distinct MnemonicTriggerClass = void*;

distinct MountOperationClass = void*;

distinct MountOperationPrivate = void*;

distinct MultiFilterClass = void*;

distinct MultiSelectionClass = void*;

distinct MultiSorterClass = void*;

distinct NamedActionClass = void*;

distinct NativeDialogClass = void*;

distinct NativeInterface = void*;

distinct NeverTriggerClass = void*;

distinct NoSelectionClass = void*;

distinct NothingActionClass = void*;

distinct NumericSorterClass = void*;

distinct OrientableIface = void*;

distinct OverlayLayoutChildClass = void*;

distinct OverlayLayoutClass = void*;

distinct PadActionEntry = void*;

distinct PadControllerClass = void*;

distinct PageRange = void*;

distinct PaperSize = void*;

distinct PasswordEntryBufferClass = void*;

distinct PasswordEntryClass = void*;

distinct PictureClass = void*;

distinct PopoverClass = void*;

distinct PrintBackend = void*;

distinct PrintDialogClass = void*;

distinct PrintOperationClass = void*;

distinct PrintOperationPreviewIface = void*;

distinct PrintOperationPrivate = void*;

distinct PrintSetup = void*;

distinct RangeClass = void*;

distinct RecentData = void*;

distinct RecentInfo = void*;

distinct RecentManagerClass = void*;

distinct RecentManagerPrivate = void*;

distinct RequestedSize = void*;

distinct Requisition = void*;

distinct RootInterface = void*;

distinct ScaleButtonClass = void*;

distinct ScaleClass = void*;

distinct ScrollInfo = void*;

distinct ScrollableInterface = void*;

distinct SectionModelInterface = void*;

distinct SelectionFilterModelClass = void*;

distinct SelectionModelInterface = void*;

distinct ShortcutActionClass = void*;

distinct ShortcutClass = void*;

distinct ShortcutControllerClass = void*;

distinct ShortcutLabelClass = void*;

distinct ShortcutManagerInterface = void*;

distinct ShortcutTriggerClass = void*;

distinct ShortcutsGroupClass = void*;

distinct ShortcutsSectionClass = void*;

distinct ShortcutsShortcutClass = void*;

distinct SignalActionClass = void*;

distinct SignalListItemFactoryClass = void*;

distinct SingleSelectionClass = void*;

distinct SliceListModelClass = void*;

distinct SnapshotClass = void*;

distinct SortListModelClass = void*;

distinct SorterClass = void*;

distinct StringFilterClass = void*;

distinct StringListClass = void*;

distinct StringObjectClass = void*;

distinct StringSorterClass = void*;

distinct StyleContextClass = void*;

distinct SymbolicPaintableInterface = void*;

distinct TextBufferClass = void*;

distinct TextBufferPrivate = void*;

distinct TextChildAnchorClass = void*;

distinct TextIter = void*;

distinct TextMarkClass = void*;

distinct TextTagClass = void*;

distinct TextTagPrivate = void*;

distinct TextViewClass = void*;

distinct TextViewPrivate = void*;

distinct ToggleButtonClass = void*;

distinct TreeDragDestIface = void*;

distinct TreeDragSourceIface = void*;

distinct TreeExpanderClass = void*;

distinct TreeIter = void*;

distinct TreeListModelClass = void*;

distinct TreeListRowClass = void*;

distinct TreeListRowSorterClass = void*;

distinct TreeModelFilterClass = void*;

distinct TreeModelFilterPrivate = void*;

distinct TreeModelIface = void*;

distinct TreeModelSortClass = void*;

distinct TreeModelSortPrivate = void*;

distinct TreePath = void*;

distinct TreeRowReference = void*;

distinct TreeSortableIface = void*;

distinct TreeStoreClass = void*;

distinct TreeStorePrivate = void*;

distinct TreeViewClass = void*;

distinct UriLauncherClass = void*;

distinct VideoClass = void*;

distinct WidgetClass = void*;

distinct WidgetClassPrivate = void*;

distinct WidgetPaintableClass = void*;

distinct WidgetPrivate = void*;

distinct WindowClass = void*;

distinct WindowControlsClass = void*;

distinct WindowGroupClass = void*;

distinct WindowGroupPrivate = void*;

distinct WindowHandleClass = void*;


def AssistantPageFunc = fn int(int current_page, void* data);

def CellAllocCallback = fn bool(CellRenderer* renderer, gdk::Rectangle* cell_area, gdk::Rectangle* cell_background, void* data);

def CellCallback = fn bool(CellRenderer* renderer, void* data);

def CellLayoutDataFunc = fn void(CellLayout* cell_layout, CellRenderer* cell, TreeModel* tree_model, TreeIter* iter, void* data);

def CustomAllocateFunc = fn void(Widget* widget, int width, int height, int baseline);

def CustomFilterFunc = fn bool(gobject::Object* item, void* user_data);

def CustomMeasureFunc = fn void(Widget* widget, Orientation orientation, int for_size, int* minimum, int* natural, int* minimum_baseline, int* natural_baseline);

def CustomRequestModeFunc = fn SizeRequestMode(Widget* widget);

def DrawingAreaDrawFunc = fn void(DrawingArea* drawing_area, cairo::Context* cr, int width, int height, void* user_data);

def EntryCompletionMatchFunc = fn bool(EntryCompletion* completion, ZString key, TreeIter* iter, void* user_data);

def ExpressionNotify = fn void(void* user_data);

def FlowBoxCreateWidgetFunc = fn Widget*(gobject::Object* item, void* user_data);

def FlowBoxFilterFunc = fn bool(FlowBoxChild* child, void* user_data);

def FlowBoxForeachFunc = fn void(FlowBox* box, FlowBoxChild* child, void* user_data);

def FlowBoxSortFunc = fn int(FlowBoxChild* child1, FlowBoxChild* child2, void* user_data);

def FontFilterFunc = fn bool(pango::FontFamily* family, pango::FontFace* face, void* data);

def IconViewForeachFunc = fn void(IconView* icon_view, TreePath* path, void* data);

def ListBoxCreateWidgetFunc = fn Widget*(gobject::Object* item, void* user_data);

def ListBoxFilterFunc = fn bool(ListBoxRow* row, void* user_data);

def ListBoxForeachFunc = fn void(ListBox* box, ListBoxRow* row, void* user_data);

def ListBoxSortFunc = fn int(ListBoxRow* row1, ListBoxRow* row2, void* user_data);

def ListBoxUpdateHeaderFunc = fn void(ListBoxRow* row, ListBoxRow* before, void* user_data);

def MapListModelMapFunc = fn gobject::Object*(gobject::Object* item, void* user_data);

def MenuButtonCreatePopupFunc = fn void(MenuButton* menu_button, void* user_data);

def PageSetupDoneFunc = fn void(PageSetup* page_setup, void* data);

def PrintJobCompleteFunc = fn void(PrintJob* print_job, void* user_data, glib::Error* error);

def PrintSettingsFunc = fn void(ZString key, ZString value, void* user_data);

def PrinterFunc = fn bool(Printer* printer, void* data);

def ScaleFormatValueFunc = fn ZString*(Scale* scale, double value, void* user_data);

def ShortcutFunc = fn bool(Widget* widget, glib::Variant* args, void* user_data);

def TextBufferCommitNotify = fn void(TextBuffer* buffer, TextBufferNotifyFlags flags, uint position, uint length, void* user_data);

def TextCharPredicate = fn bool(uint ch, void* user_data);

def TextTagTableForeach = fn void(TextTag* tag, void* data);

def TickCallback = fn bool(Widget* widget, gdk::FrameClock* frame_clock, void* user_data);

def TreeCellDataFunc = fn void(TreeViewColumn* tree_column, CellRenderer* cell, TreeModel* tree_model, TreeIter* iter, void* data);

def TreeIterCompareFunc = fn int(TreeModel* model, TreeIter* a, TreeIter* b, void* user_data);

def TreeListModelCreateModelFunc = fn gio::ListModel*(gobject::Object* item, void* user_data);

def TreeModelFilterModifyFunc = fn void(TreeModel* model, TreeIter* iter, gobject::Value* value, int column, void* data);

def TreeModelFilterVisibleFunc = fn bool(TreeModel* model, TreeIter* iter, void* data);

def TreeModelForeachFunc = fn bool(TreeModel* model, TreePath* path, TreeIter* iter, void* data);

def TreeSelectionForeachFunc = fn void(TreeModel* model, TreePath* path, TreeIter* iter, void* data);

def TreeSelectionFunc = fn bool(TreeSelection* selection, TreeModel* model, TreePath* path, bool path_currently_selected, void* data);

def TreeViewColumnDropFunc = fn bool(TreeView* tree_view, TreeViewColumn* column, TreeViewColumn* prev_column, TreeViewColumn* next_column, void* data);

def TreeViewMappingFunc = fn void(TreeView* tree_view, TreePath* path, void* user_data);

def TreeViewRowSeparatorFunc = fn bool(TreeModel* model, TreeIter* iter, void* data);

def TreeViewSearchEqualFunc = fn bool(TreeModel* model, int column, ZString key, TreeIter* iter, void* search_data);

def WidgetActionActivateFunc = fn void(Widget* widget, ZString action_name, glib::Variant* parameter);


<* Maps to GtkATContext *>
distinct ATContext = void*;

fn gobject::Object* ATContext.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_accessible *>
extern fn Accessible* ATContext.get_accessible(&self) @extern("gtk_at_context_get_accessible");

<* Maps to get_accessible_role *>
extern fn AccessibleRole ATContext.get_accessible_role(&self) @extern("gtk_at_context_get_accessible_role");


<* Maps to GtkAboutDialog *>
distinct AboutDialog = void*;

fn Window* AboutDialog.as_Window(&self) => (Window*)(self);


<* Maps to add_credit_section *>
extern fn void AboutDialog.add_credit_section(&self, ZString section_name, ZString* people) @extern("gtk_about_dialog_add_credit_section");

<* Maps to get_artists *>
extern fn ZString AboutDialog.get_artists(&self) @extern("gtk_about_dialog_get_artists");

<* Maps to get_authors *>
extern fn ZString AboutDialog.get_authors(&self) @extern("gtk_about_dialog_get_authors");

<* Maps to get_comments *>
extern fn ZString AboutDialog.get_comments(&self) @extern("gtk_about_dialog_get_comments");

<* Maps to get_copyright *>
extern fn ZString AboutDialog.get_copyright(&self) @extern("gtk_about_dialog_get_copyright");

<* Maps to get_documenters *>
extern fn ZString AboutDialog.get_documenters(&self) @extern("gtk_about_dialog_get_documenters");

<* Maps to get_license *>
extern fn ZString AboutDialog.get_license(&self) @extern("gtk_about_dialog_get_license");

<* Maps to get_license_type *>
extern fn License AboutDialog.get_license_type(&self) @extern("gtk_about_dialog_get_license_type");

<* Maps to get_logo *>
extern fn gdk::Paintable* AboutDialog.get_logo(&self) @extern("gtk_about_dialog_get_logo");

<* Maps to get_logo_icon_name *>
extern fn ZString AboutDialog.get_logo_icon_name(&self) @extern("gtk_about_dialog_get_logo_icon_name");

<* Maps to get_program_name *>
extern fn ZString AboutDialog.get_program_name(&self) @extern("gtk_about_dialog_get_program_name");

<* Maps to get_system_information *>
extern fn ZString AboutDialog.get_system_information(&self) @extern("gtk_about_dialog_get_system_information");

<* Maps to get_translator_credits *>
extern fn ZString AboutDialog.get_translator_credits(&self) @extern("gtk_about_dialog_get_translator_credits");

<* Maps to get_version *>
extern fn ZString AboutDialog.get_version(&self) @extern("gtk_about_dialog_get_version");

<* Maps to get_website *>
extern fn ZString AboutDialog.get_website(&self) @extern("gtk_about_dialog_get_website");

<* Maps to get_website_label *>
extern fn ZString AboutDialog.get_website_label(&self) @extern("gtk_about_dialog_get_website_label");

<* Maps to get_wrap_license *>
extern fn bool AboutDialog.get_wrap_license(&self) @extern("gtk_about_dialog_get_wrap_license");

<* Maps to set_artists *>
extern fn void AboutDialog.set_artists(&self, ZString* artists) @extern("gtk_about_dialog_set_artists");

<* Maps to set_authors *>
extern fn void AboutDialog.set_authors(&self, ZString* authors) @extern("gtk_about_dialog_set_authors");

<* Maps to set_comments *>
extern fn void AboutDialog.set_comments(&self, ZString comments) @extern("gtk_about_dialog_set_comments");

<* Maps to set_copyright *>
extern fn void AboutDialog.set_copyright(&self, ZString copyright) @extern("gtk_about_dialog_set_copyright");

<* Maps to set_documenters *>
extern fn void AboutDialog.set_documenters(&self, ZString* documenters) @extern("gtk_about_dialog_set_documenters");

<* Maps to set_license *>
extern fn void AboutDialog.set_license(&self, ZString license) @extern("gtk_about_dialog_set_license");

<* Maps to set_license_type *>
extern fn void AboutDialog.set_license_type(&self, License license_type) @extern("gtk_about_dialog_set_license_type");

<* Maps to set_logo *>
extern fn void AboutDialog.set_logo(&self, gdk::Paintable* logo) @extern("gtk_about_dialog_set_logo");

<* Maps to set_logo_icon_name *>
extern fn void AboutDialog.set_logo_icon_name(&self, ZString icon_name) @extern("gtk_about_dialog_set_logo_icon_name");

<* Maps to set_program_name *>
extern fn void AboutDialog.set_program_name(&self, ZString name) @extern("gtk_about_dialog_set_program_name");

<* Maps to set_system_information *>
extern fn void AboutDialog.set_system_information(&self, ZString system_information) @extern("gtk_about_dialog_set_system_information");

<* Maps to set_translator_credits *>
extern fn void AboutDialog.set_translator_credits(&self, ZString translator_credits) @extern("gtk_about_dialog_set_translator_credits");

<* Maps to set_version *>
extern fn void AboutDialog.set_version(&self, ZString version) @extern("gtk_about_dialog_set_version");

<* Maps to set_website *>
extern fn void AboutDialog.set_website(&self, ZString website) @extern("gtk_about_dialog_set_website");

<* Maps to set_website_label *>
extern fn void AboutDialog.set_website_label(&self, ZString website_label) @extern("gtk_about_dialog_set_website_label");

<* Maps to set_wrap_license *>
extern fn void AboutDialog.set_wrap_license(&self, bool wrap_license) @extern("gtk_about_dialog_set_wrap_license");


<* Maps to GtkActionBar *>
distinct ActionBar = void*;

fn Widget* ActionBar.as_Widget(&self) => (Widget*)(self);


<* Maps to get_center_widget *>
extern fn Widget* ActionBar.get_center_widget(&self) @extern("gtk_action_bar_get_center_widget");

<* Maps to get_revealed *>
extern fn bool ActionBar.get_revealed(&self) @extern("gtk_action_bar_get_revealed");

<* Maps to pack_end *>
extern fn void ActionBar.pack_end(&self, Widget* child) @extern("gtk_action_bar_pack_end");

<* Maps to pack_start *>
extern fn void ActionBar.pack_start(&self, Widget* child) @extern("gtk_action_bar_pack_start");

<* Maps to remove *>
extern fn void ActionBar.remove(&self, Widget* child) @extern("gtk_action_bar_remove");

<* Maps to set_center_widget *>
extern fn void ActionBar.set_center_widget(&self, Widget* center_widget) @extern("gtk_action_bar_set_center_widget");

<* Maps to set_revealed *>
extern fn void ActionBar.set_revealed(&self, bool revealed) @extern("gtk_action_bar_set_revealed");


<* Maps to GtkActivateAction *>
distinct ActivateAction = void*;

fn ShortcutAction* ActivateAction.as_ShortcutAction(&self) => (ShortcutAction*)(self);



<* Maps to GtkAdjustment *>
distinct Adjustment = void*;

fn gobject::InitiallyUnowned* Adjustment.as_gobject_InitiallyUnowned(&self) => (gobject::InitiallyUnowned*)(self);


<* Maps to clamp_page *>
extern fn void Adjustment.clamp_page(&self, double lower, double upper) @extern("gtk_adjustment_clamp_page");

<* Maps to configure *>
extern fn void Adjustment.configure(&self, double value, double lower, double upper, double step_increment, double page_increment, double page_size) @extern("gtk_adjustment_configure");

<* Maps to get_lower *>
extern fn double Adjustment.get_lower(&self) @extern("gtk_adjustment_get_lower");

<* Maps to get_minimum_increment *>
extern fn double Adjustment.get_minimum_increment(&self) @extern("gtk_adjustment_get_minimum_increment");

<* Maps to get_page_increment *>
extern fn double Adjustment.get_page_increment(&self) @extern("gtk_adjustment_get_page_increment");

<* Maps to get_page_size *>
extern fn double Adjustment.get_page_size(&self) @extern("gtk_adjustment_get_page_size");

<* Maps to get_step_increment *>
extern fn double Adjustment.get_step_increment(&self) @extern("gtk_adjustment_get_step_increment");

<* Maps to get_upper *>
extern fn double Adjustment.get_upper(&self) @extern("gtk_adjustment_get_upper");

<* Maps to get_value *>
extern fn double Adjustment.get_value(&self) @extern("gtk_adjustment_get_value");

<* Maps to set_lower *>
extern fn void Adjustment.set_lower(&self, double lower) @extern("gtk_adjustment_set_lower");

<* Maps to set_page_increment *>
extern fn void Adjustment.set_page_increment(&self, double page_increment) @extern("gtk_adjustment_set_page_increment");

<* Maps to set_page_size *>
extern fn void Adjustment.set_page_size(&self, double page_size) @extern("gtk_adjustment_set_page_size");

<* Maps to set_step_increment *>
extern fn void Adjustment.set_step_increment(&self, double step_increment) @extern("gtk_adjustment_set_step_increment");

<* Maps to set_upper *>
extern fn void Adjustment.set_upper(&self, double upper) @extern("gtk_adjustment_set_upper");

<* Maps to set_value *>
extern fn void Adjustment.set_value(&self, double value) @extern("gtk_adjustment_set_value");


<* Maps to GtkAlertDialog *>
distinct AlertDialog = void*;

fn gobject::Object* AlertDialog.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to choose *>
extern fn void AlertDialog.choose(&self, Window* parent, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gtk_alert_dialog_choose");

<* Maps to choose_finish *>
extern fn int AlertDialog.choose_finish(&self, gio::AsyncResult* result) @extern("gtk_alert_dialog_choose_finish");

<* Maps to get_buttons *>
extern fn ZString AlertDialog.get_buttons(&self) @extern("gtk_alert_dialog_get_buttons");

<* Maps to get_cancel_button *>
extern fn int AlertDialog.get_cancel_button(&self) @extern("gtk_alert_dialog_get_cancel_button");

<* Maps to get_default_button *>
extern fn int AlertDialog.get_default_button(&self) @extern("gtk_alert_dialog_get_default_button");

<* Maps to get_detail *>
extern fn ZString AlertDialog.get_detail(&self) @extern("gtk_alert_dialog_get_detail");

<* Maps to get_message *>
extern fn ZString AlertDialog.get_message(&self) @extern("gtk_alert_dialog_get_message");

<* Maps to get_modal *>
extern fn bool AlertDialog.get_modal(&self) @extern("gtk_alert_dialog_get_modal");

<* Maps to set_buttons *>
extern fn void AlertDialog.set_buttons(&self, ZString* labels) @extern("gtk_alert_dialog_set_buttons");

<* Maps to set_cancel_button *>
extern fn void AlertDialog.set_cancel_button(&self, int button) @extern("gtk_alert_dialog_set_cancel_button");

<* Maps to set_default_button *>
extern fn void AlertDialog.set_default_button(&self, int button) @extern("gtk_alert_dialog_set_default_button");

<* Maps to set_detail *>
extern fn void AlertDialog.set_detail(&self, ZString detail) @extern("gtk_alert_dialog_set_detail");

<* Maps to set_message *>
extern fn void AlertDialog.set_message(&self, ZString message) @extern("gtk_alert_dialog_set_message");

<* Maps to set_modal *>
extern fn void AlertDialog.set_modal(&self, bool modal) @extern("gtk_alert_dialog_set_modal");

<* Maps to show *>
extern fn void AlertDialog.show(&self, Window* parent) @extern("gtk_alert_dialog_show");


<* Maps to GtkAlternativeTrigger *>
distinct AlternativeTrigger = void*;

fn ShortcutTrigger* AlternativeTrigger.as_ShortcutTrigger(&self) => (ShortcutTrigger*)(self);


<* Maps to get_first *>
extern fn ShortcutTrigger* AlternativeTrigger.get_first(&self) @extern("gtk_alternative_trigger_get_first");

<* Maps to get_second *>
extern fn ShortcutTrigger* AlternativeTrigger.get_second(&self) @extern("gtk_alternative_trigger_get_second");


<* Maps to GtkAnyFilter *>
distinct AnyFilter = void*;

fn MultiFilter* AnyFilter.as_MultiFilter(&self) => (MultiFilter*)(self);



<* Maps to GtkAppChooserButton *>
distinct AppChooserButton = void*;

fn Widget* AppChooserButton.as_Widget(&self) => (Widget*)(self);


<* Maps to append_custom_item *>
extern fn void AppChooserButton.append_custom_item(&self, ZString name, ZString label, gio::Icon* icon) @extern("gtk_app_chooser_button_append_custom_item");

<* Maps to append_separator *>
extern fn void AppChooserButton.append_separator(&self) @extern("gtk_app_chooser_button_append_separator");

<* Maps to get_heading *>
extern fn ZString AppChooserButton.get_heading(&self) @extern("gtk_app_chooser_button_get_heading");

<* Maps to get_modal *>
extern fn bool AppChooserButton.get_modal(&self) @extern("gtk_app_chooser_button_get_modal");

<* Maps to get_show_default_item *>
extern fn bool AppChooserButton.get_show_default_item(&self) @extern("gtk_app_chooser_button_get_show_default_item");

<* Maps to get_show_dialog_item *>
extern fn bool AppChooserButton.get_show_dialog_item(&self) @extern("gtk_app_chooser_button_get_show_dialog_item");

<* Maps to set_active_custom_item *>
extern fn void AppChooserButton.set_active_custom_item(&self, ZString name) @extern("gtk_app_chooser_button_set_active_custom_item");

<* Maps to set_heading *>
extern fn void AppChooserButton.set_heading(&self, ZString heading) @extern("gtk_app_chooser_button_set_heading");

<* Maps to set_modal *>
extern fn void AppChooserButton.set_modal(&self, bool modal) @extern("gtk_app_chooser_button_set_modal");

<* Maps to set_show_default_item *>
extern fn void AppChooserButton.set_show_default_item(&self, bool setting) @extern("gtk_app_chooser_button_set_show_default_item");

<* Maps to set_show_dialog_item *>
extern fn void AppChooserButton.set_show_dialog_item(&self, bool setting) @extern("gtk_app_chooser_button_set_show_dialog_item");


<* Maps to GtkAppChooserDialog *>
distinct AppChooserDialog = void*;

fn Dialog* AppChooserDialog.as_Dialog(&self) => (Dialog*)(self);


<* Maps to get_heading *>
extern fn ZString AppChooserDialog.get_heading(&self) @extern("gtk_app_chooser_dialog_get_heading");

<* Maps to get_widget *>
extern fn Widget* AppChooserDialog.get_widget(&self) @extern("gtk_app_chooser_dialog_get_widget");

<* Maps to set_heading *>
extern fn void AppChooserDialog.set_heading(&self, ZString heading) @extern("gtk_app_chooser_dialog_set_heading");


<* Maps to GtkAppChooserWidget *>
distinct AppChooserWidget = void*;

fn Widget* AppChooserWidget.as_Widget(&self) => (Widget*)(self);


<* Maps to get_default_text *>
extern fn ZString AppChooserWidget.get_default_text(&self) @extern("gtk_app_chooser_widget_get_default_text");

<* Maps to get_show_all *>
extern fn bool AppChooserWidget.get_show_all(&self) @extern("gtk_app_chooser_widget_get_show_all");

<* Maps to get_show_default *>
extern fn bool AppChooserWidget.get_show_default(&self) @extern("gtk_app_chooser_widget_get_show_default");

<* Maps to get_show_fallback *>
extern fn bool AppChooserWidget.get_show_fallback(&self) @extern("gtk_app_chooser_widget_get_show_fallback");

<* Maps to get_show_other *>
extern fn bool AppChooserWidget.get_show_other(&self) @extern("gtk_app_chooser_widget_get_show_other");

<* Maps to get_show_recommended *>
extern fn bool AppChooserWidget.get_show_recommended(&self) @extern("gtk_app_chooser_widget_get_show_recommended");

<* Maps to set_default_text *>
extern fn void AppChooserWidget.set_default_text(&self, ZString text) @extern("gtk_app_chooser_widget_set_default_text");

<* Maps to set_show_all *>
extern fn void AppChooserWidget.set_show_all(&self, bool setting) @extern("gtk_app_chooser_widget_set_show_all");

<* Maps to set_show_default *>
extern fn void AppChooserWidget.set_show_default(&self, bool setting) @extern("gtk_app_chooser_widget_set_show_default");

<* Maps to set_show_fallback *>
extern fn void AppChooserWidget.set_show_fallback(&self, bool setting) @extern("gtk_app_chooser_widget_set_show_fallback");

<* Maps to set_show_other *>
extern fn void AppChooserWidget.set_show_other(&self, bool setting) @extern("gtk_app_chooser_widget_set_show_other");

<* Maps to set_show_recommended *>
extern fn void AppChooserWidget.set_show_recommended(&self, bool setting) @extern("gtk_app_chooser_widget_set_show_recommended");


<* Maps to GtkApplication *>
distinct Application = void*;

fn gio::Application* Application.as_gio_Application(&self) => (gio::Application*)(self);


<* Maps to add_window *>
extern fn void Application.add_window(&self, Window* window) @extern("gtk_application_add_window");

<* Maps to get_accels_for_action *>
extern fn ZString Application.get_accels_for_action(&self, ZString detailed_action_name) @extern("gtk_application_get_accels_for_action");

<* Maps to get_actions_for_accel *>
extern fn ZString Application.get_actions_for_accel(&self, ZString accel) @extern("gtk_application_get_actions_for_accel");

<* Maps to get_active_window *>
extern fn Window* Application.get_active_window(&self) @extern("gtk_application_get_active_window");

<* Maps to get_menu_by_id *>
extern fn gio::Menu* Application.get_menu_by_id(&self, ZString id) @extern("gtk_application_get_menu_by_id");

<* Maps to get_menubar *>
extern fn gio::MenuModel* Application.get_menubar(&self) @extern("gtk_application_get_menubar");

<* Maps to get_window_by_id *>
extern fn Window* Application.get_window_by_id(&self, uint id) @extern("gtk_application_get_window_by_id");

<* Maps to get_windows *>
extern fn glib::List* Application.get_windows(&self) @extern("gtk_application_get_windows");

<* Maps to inhibit *>
extern fn uint Application.inhibit(&self, Window* window, ApplicationInhibitFlags flags, ZString reason) @extern("gtk_application_inhibit");

<* Maps to list_action_descriptions *>
extern fn ZString Application.list_action_descriptions(&self) @extern("gtk_application_list_action_descriptions");

<* Maps to remove_window *>
extern fn void Application.remove_window(&self, Window* window) @extern("gtk_application_remove_window");

<* Maps to set_accels_for_action *>
extern fn void Application.set_accels_for_action(&self, ZString detailed_action_name, ZString* accels) @extern("gtk_application_set_accels_for_action");

<* Maps to set_menubar *>
extern fn void Application.set_menubar(&self, gio::MenuModel* menubar) @extern("gtk_application_set_menubar");

<* Maps to uninhibit *>
extern fn void Application.uninhibit(&self, uint cookie) @extern("gtk_application_uninhibit");


<* Maps to GtkApplicationWindow *>
distinct ApplicationWindow = void*;

fn Window* ApplicationWindow.as_Window(&self) => (Window*)(self);


<* Maps to get_help_overlay *>
extern fn ShortcutsWindow* ApplicationWindow.get_help_overlay(&self) @extern("gtk_application_window_get_help_overlay");

<* Maps to get_id *>
extern fn uint ApplicationWindow.get_id(&self) @extern("gtk_application_window_get_id");

<* Maps to get_show_menubar *>
extern fn bool ApplicationWindow.get_show_menubar(&self) @extern("gtk_application_window_get_show_menubar");

<* Maps to set_help_overlay *>
extern fn void ApplicationWindow.set_help_overlay(&self, ShortcutsWindow* help_overlay) @extern("gtk_application_window_set_help_overlay");

<* Maps to set_show_menubar *>
extern fn void ApplicationWindow.set_show_menubar(&self, bool show_menubar) @extern("gtk_application_window_set_show_menubar");


<* Maps to GtkAspectFrame *>
distinct AspectFrame = void*;

fn Widget* AspectFrame.as_Widget(&self) => (Widget*)(self);


<* Maps to get_child *>
extern fn Widget* AspectFrame.get_child(&self) @extern("gtk_aspect_frame_get_child");

<* Maps to get_obey_child *>
extern fn bool AspectFrame.get_obey_child(&self) @extern("gtk_aspect_frame_get_obey_child");

<* Maps to get_ratio *>
extern fn float AspectFrame.get_ratio(&self) @extern("gtk_aspect_frame_get_ratio");

<* Maps to get_xalign *>
extern fn float AspectFrame.get_xalign(&self) @extern("gtk_aspect_frame_get_xalign");

<* Maps to get_yalign *>
extern fn float AspectFrame.get_yalign(&self) @extern("gtk_aspect_frame_get_yalign");

<* Maps to set_child *>
extern fn void AspectFrame.set_child(&self, Widget* child) @extern("gtk_aspect_frame_set_child");

<* Maps to set_obey_child *>
extern fn void AspectFrame.set_obey_child(&self, bool obey_child) @extern("gtk_aspect_frame_set_obey_child");

<* Maps to set_ratio *>
extern fn void AspectFrame.set_ratio(&self, float ratio) @extern("gtk_aspect_frame_set_ratio");

<* Maps to set_xalign *>
extern fn void AspectFrame.set_xalign(&self, float xalign) @extern("gtk_aspect_frame_set_xalign");

<* Maps to set_yalign *>
extern fn void AspectFrame.set_yalign(&self, float yalign) @extern("gtk_aspect_frame_set_yalign");


<* Maps to GtkAssistant *>
distinct Assistant = void*;

fn Window* Assistant.as_Window(&self) => (Window*)(self);


<* Maps to add_action_widget *>
extern fn void Assistant.add_action_widget(&self, Widget* child) @extern("gtk_assistant_add_action_widget");

<* Maps to append_page *>
extern fn int Assistant.append_page(&self, Widget* page) @extern("gtk_assistant_append_page");

<* Maps to commit *>
extern fn void Assistant.commit(&self) @extern("gtk_assistant_commit");

<* Maps to get_current_page *>
extern fn int Assistant.get_current_page(&self) @extern("gtk_assistant_get_current_page");

<* Maps to get_n_pages *>
extern fn int Assistant.get_n_pages(&self) @extern("gtk_assistant_get_n_pages");

<* Maps to get_nth_page *>
extern fn Widget* Assistant.get_nth_page(&self, int page_num) @extern("gtk_assistant_get_nth_page");

<* Maps to get_page *>
extern fn AssistantPage* Assistant.get_page(&self, Widget* child) @extern("gtk_assistant_get_page");

<* Maps to get_page_complete *>
extern fn bool Assistant.get_page_complete(&self, Widget* page) @extern("gtk_assistant_get_page_complete");

<* Maps to get_page_title *>
extern fn ZString Assistant.get_page_title(&self, Widget* page) @extern("gtk_assistant_get_page_title");

<* Maps to get_page_type *>
extern fn AssistantPageType Assistant.get_page_type(&self, Widget* page) @extern("gtk_assistant_get_page_type");

<* Maps to get_pages *>
extern fn gio::ListModel* Assistant.get_pages(&self) @extern("gtk_assistant_get_pages");

<* Maps to insert_page *>
extern fn int Assistant.insert_page(&self, Widget* page, int position) @extern("gtk_assistant_insert_page");

<* Maps to next_page *>
extern fn void Assistant.next_page(&self) @extern("gtk_assistant_next_page");

<* Maps to prepend_page *>
extern fn int Assistant.prepend_page(&self, Widget* page) @extern("gtk_assistant_prepend_page");

<* Maps to previous_page *>
extern fn void Assistant.previous_page(&self) @extern("gtk_assistant_previous_page");

<* Maps to remove_action_widget *>
extern fn void Assistant.remove_action_widget(&self, Widget* child) @extern("gtk_assistant_remove_action_widget");

<* Maps to remove_page *>
extern fn void Assistant.remove_page(&self, int page_num) @extern("gtk_assistant_remove_page");

<* Maps to set_current_page *>
extern fn void Assistant.set_current_page(&self, int page_num) @extern("gtk_assistant_set_current_page");

<* Maps to set_forward_page_func *>
extern fn void Assistant.set_forward_page_func(&self, AssistantPageFunc page_func, void* data, glib::DestroyNotify destroy) @extern("gtk_assistant_set_forward_page_func");

<* Maps to set_page_complete *>
extern fn void Assistant.set_page_complete(&self, Widget* page, bool complete) @extern("gtk_assistant_set_page_complete");

<* Maps to set_page_title *>
extern fn void Assistant.set_page_title(&self, Widget* page, ZString title) @extern("gtk_assistant_set_page_title");

<* Maps to set_page_type *>
extern fn void Assistant.set_page_type(&self, Widget* page, AssistantPageType type) @extern("gtk_assistant_set_page_type");

<* Maps to update_buttons_state *>
extern fn void Assistant.update_buttons_state(&self) @extern("gtk_assistant_update_buttons_state");


<* Maps to GtkAssistantPage *>
distinct AssistantPage = void*;

fn gobject::Object* AssistantPage.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_child *>
extern fn Widget* AssistantPage.get_child(&self) @extern("gtk_assistant_page_get_child");


<* Maps to GtkBinLayout *>
distinct BinLayout = void*;

fn LayoutManager* BinLayout.as_LayoutManager(&self) => (LayoutManager*)(self);



<* Maps to GtkBookmarkList *>
distinct BookmarkList = void*;

fn gobject::Object* BookmarkList.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_attributes *>
extern fn ZString BookmarkList.get_attributes(&self) @extern("gtk_bookmark_list_get_attributes");

<* Maps to get_filename *>
extern fn ZString BookmarkList.get_filename(&self) @extern("gtk_bookmark_list_get_filename");

<* Maps to get_io_priority *>
extern fn int BookmarkList.get_io_priority(&self) @extern("gtk_bookmark_list_get_io_priority");

<* Maps to is_loading *>
extern fn bool BookmarkList.is_loading(&self) @extern("gtk_bookmark_list_is_loading");

<* Maps to set_attributes *>
extern fn void BookmarkList.set_attributes(&self, ZString attributes) @extern("gtk_bookmark_list_set_attributes");

<* Maps to set_io_priority *>
extern fn void BookmarkList.set_io_priority(&self, int io_priority) @extern("gtk_bookmark_list_set_io_priority");


<* Maps to GtkBoolFilter *>
distinct BoolFilter = void*;

fn Filter* BoolFilter.as_Filter(&self) => (Filter*)(self);


<* Maps to get_expression *>
extern fn Expression* BoolFilter.get_expression(&self) @extern("gtk_bool_filter_get_expression");

<* Maps to get_invert *>
extern fn bool BoolFilter.get_invert(&self) @extern("gtk_bool_filter_get_invert");

<* Maps to set_expression *>
extern fn void BoolFilter.set_expression(&self, Expression* expression) @extern("gtk_bool_filter_set_expression");

<* Maps to set_invert *>
extern fn void BoolFilter.set_invert(&self, bool invert) @extern("gtk_bool_filter_set_invert");


<* Maps to GtkBox *>
distinct Box = void*;

fn Widget* Box.as_Widget(&self) => (Widget*)(self);


<* Maps to append *>
extern fn void Box.append(&self, Widget* child) @extern("gtk_box_append");

<* Maps to get_baseline_child *>
extern fn int Box.get_baseline_child(&self) @extern("gtk_box_get_baseline_child");

<* Maps to get_baseline_position *>
extern fn BaselinePosition Box.get_baseline_position(&self) @extern("gtk_box_get_baseline_position");

<* Maps to get_homogeneous *>
extern fn bool Box.get_homogeneous(&self) @extern("gtk_box_get_homogeneous");

<* Maps to get_spacing *>
extern fn int Box.get_spacing(&self) @extern("gtk_box_get_spacing");

<* Maps to insert_child_after *>
extern fn void Box.insert_child_after(&self, Widget* child, Widget* sibling) @extern("gtk_box_insert_child_after");

<* Maps to prepend *>
extern fn void Box.prepend(&self, Widget* child) @extern("gtk_box_prepend");

<* Maps to remove *>
extern fn void Box.remove(&self, Widget* child) @extern("gtk_box_remove");

<* Maps to reorder_child_after *>
extern fn void Box.reorder_child_after(&self, Widget* child, Widget* sibling) @extern("gtk_box_reorder_child_after");

<* Maps to set_baseline_child *>
extern fn void Box.set_baseline_child(&self, int child) @extern("gtk_box_set_baseline_child");

<* Maps to set_baseline_position *>
extern fn void Box.set_baseline_position(&self, BaselinePosition position) @extern("gtk_box_set_baseline_position");

<* Maps to set_homogeneous *>
extern fn void Box.set_homogeneous(&self, bool homogeneous) @extern("gtk_box_set_homogeneous");

<* Maps to set_spacing *>
extern fn void Box.set_spacing(&self, int spacing) @extern("gtk_box_set_spacing");


<* Maps to GtkBoxLayout *>
distinct BoxLayout = void*;

fn LayoutManager* BoxLayout.as_LayoutManager(&self) => (LayoutManager*)(self);


<* Maps to get_baseline_child *>
extern fn int BoxLayout.get_baseline_child(&self) @extern("gtk_box_layout_get_baseline_child");

<* Maps to get_baseline_position *>
extern fn BaselinePosition BoxLayout.get_baseline_position(&self) @extern("gtk_box_layout_get_baseline_position");

<* Maps to get_homogeneous *>
extern fn bool BoxLayout.get_homogeneous(&self) @extern("gtk_box_layout_get_homogeneous");

<* Maps to get_spacing *>
extern fn uint BoxLayout.get_spacing(&self) @extern("gtk_box_layout_get_spacing");

<* Maps to set_baseline_child *>
extern fn void BoxLayout.set_baseline_child(&self, int child) @extern("gtk_box_layout_set_baseline_child");

<* Maps to set_baseline_position *>
extern fn void BoxLayout.set_baseline_position(&self, BaselinePosition position) @extern("gtk_box_layout_set_baseline_position");

<* Maps to set_homogeneous *>
extern fn void BoxLayout.set_homogeneous(&self, bool homogeneous) @extern("gtk_box_layout_set_homogeneous");

<* Maps to set_spacing *>
extern fn void BoxLayout.set_spacing(&self, uint spacing) @extern("gtk_box_layout_set_spacing");


<* Maps to GtkBuilder *>
distinct Builder = void*;

fn gobject::Object* Builder.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to add_from_file *>
extern fn bool Builder.add_from_file(&self, ZString filename) @extern("gtk_builder_add_from_file");

<* Maps to add_from_resource *>
extern fn bool Builder.add_from_resource(&self, ZString resource_path) @extern("gtk_builder_add_from_resource");

<* Maps to add_from_string *>
extern fn bool Builder.add_from_string(&self, ZString buffer, isz length) @extern("gtk_builder_add_from_string");

<* Maps to add_objects_from_file *>
extern fn bool Builder.add_objects_from_file(&self, ZString filename, ZString object_ids) @extern("gtk_builder_add_objects_from_file");

<* Maps to add_objects_from_resource *>
extern fn bool Builder.add_objects_from_resource(&self, ZString resource_path, ZString object_ids) @extern("gtk_builder_add_objects_from_resource");

<* Maps to add_objects_from_string *>
extern fn bool Builder.add_objects_from_string(&self, ZString buffer, isz length, ZString object_ids) @extern("gtk_builder_add_objects_from_string");

<* Maps to create_closure *>
extern fn gobject::Closure* Builder.create_closure(&self, ZString function_name, BuilderClosureFlags flags, gobject::Object* object) @extern("gtk_builder_create_closure");

<* Maps to expose_object *>
extern fn void Builder.expose_object(&self, ZString name, gobject::Object* object) @extern("gtk_builder_expose_object");

<* Maps to extend_with_template *>
extern fn bool Builder.extend_with_template(&self, gobject::Object* object, usz template_type, ZString buffer, isz length) @extern("gtk_builder_extend_with_template");

<* Maps to get_current_object *>
extern fn gobject::Object* Builder.get_current_object(&self) @extern("gtk_builder_get_current_object");

<* Maps to get_object *>
extern fn gobject::Object* Builder.get_object(&self, ZString name) @extern("gtk_builder_get_object");

<* Maps to get_objects *>
extern fn glib::SList* Builder.get_objects(&self) @extern("gtk_builder_get_objects");

<* Maps to get_scope *>
extern fn BuilderScope* Builder.get_scope(&self) @extern("gtk_builder_get_scope");

<* Maps to get_translation_domain *>
extern fn ZString Builder.get_translation_domain(&self) @extern("gtk_builder_get_translation_domain");

<* Maps to get_type_from_name *>
extern fn usz Builder.get_type_from_name(&self, ZString type_name) @extern("gtk_builder_get_type_from_name");

<* Maps to set_current_object *>
extern fn void Builder.set_current_object(&self, gobject::Object* current_object) @extern("gtk_builder_set_current_object");

<* Maps to set_scope *>
extern fn void Builder.set_scope(&self, BuilderScope* scope) @extern("gtk_builder_set_scope");

<* Maps to set_translation_domain *>
extern fn void Builder.set_translation_domain(&self, ZString domain) @extern("gtk_builder_set_translation_domain");

<* Maps to value_from_string *>
extern fn bool Builder.value_from_string(&self, gobject::ParamSpec* pspec, ZString string, gobject::Value* value) @extern("gtk_builder_value_from_string");

<* Maps to value_from_string_type *>
extern fn bool Builder.value_from_string_type(&self, usz type, ZString string, gobject::Value* value) @extern("gtk_builder_value_from_string_type");


<* Maps to GtkBuilderCScope *>
distinct BuilderCScope = void*;

fn gobject::Object* BuilderCScope.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to add_callback_symbol *>
extern fn void BuilderCScope.add_callback_symbol(&self, ZString callback_name, gobject::Callback callback_symbol) @extern("gtk_builder_cscope_add_callback_symbol");

<* Maps to add_callback_symbols *>
extern fn void BuilderCScope.add_callback_symbols(&self, ZString first_callback_name, gobject::Callback first_callback_symbol, any rest) @extern("gtk_builder_cscope_add_callback_symbols");

<* Maps to lookup_callback_symbol *>
extern fn gobject::Callback BuilderCScope.lookup_callback_symbol(&self, ZString callback_name) @extern("gtk_builder_cscope_lookup_callback_symbol");


<* Maps to GtkBuilderListItemFactory *>
distinct BuilderListItemFactory = void*;

fn ListItemFactory* BuilderListItemFactory.as_ListItemFactory(&self) => (ListItemFactory*)(self);


<* Maps to get_bytes *>
extern fn glib::Bytes* BuilderListItemFactory.get_bytes(&self) @extern("gtk_builder_list_item_factory_get_bytes");

<* Maps to get_resource *>
extern fn ZString BuilderListItemFactory.get_resource(&self) @extern("gtk_builder_list_item_factory_get_resource");

<* Maps to get_scope *>
extern fn BuilderScope* BuilderListItemFactory.get_scope(&self) @extern("gtk_builder_list_item_factory_get_scope");


<* Maps to GtkButton *>
distinct Button = void*;

fn Widget* Button.as_Widget(&self) => (Widget*)(self);


<* Maps to get_can_shrink *>
extern fn bool Button.get_can_shrink(&self) @extern("gtk_button_get_can_shrink");

<* Maps to get_child *>
extern fn Widget* Button.get_child(&self) @extern("gtk_button_get_child");

<* Maps to get_has_frame *>
extern fn bool Button.get_has_frame(&self) @extern("gtk_button_get_has_frame");

<* Maps to get_icon_name *>
extern fn ZString Button.get_icon_name(&self) @extern("gtk_button_get_icon_name");

<* Maps to get_label *>
extern fn ZString Button.get_label(&self) @extern("gtk_button_get_label");

<* Maps to get_use_underline *>
extern fn bool Button.get_use_underline(&self) @extern("gtk_button_get_use_underline");

<* Maps to set_can_shrink *>
extern fn void Button.set_can_shrink(&self, bool can_shrink) @extern("gtk_button_set_can_shrink");

<* Maps to set_child *>
extern fn void Button.set_child(&self, Widget* child) @extern("gtk_button_set_child");

<* Maps to set_has_frame *>
extern fn void Button.set_has_frame(&self, bool has_frame) @extern("gtk_button_set_has_frame");

<* Maps to set_icon_name *>
extern fn void Button.set_icon_name(&self, ZString icon_name) @extern("gtk_button_set_icon_name");

<* Maps to set_label *>
extern fn void Button.set_label(&self, ZString label) @extern("gtk_button_set_label");

<* Maps to set_use_underline *>
extern fn void Button.set_use_underline(&self, bool use_underline) @extern("gtk_button_set_use_underline");


<* Maps to GtkCClosureExpression *>
distinct CClosureExpression = void*;

fn Expression* CClosureExpression.as_Expression(&self) => (Expression*)(self);



<* Maps to GtkCalendar *>
distinct Calendar = void*;

fn Widget* Calendar.as_Widget(&self) => (Widget*)(self);


<* Maps to clear_marks *>
extern fn void Calendar.clear_marks(&self) @extern("gtk_calendar_clear_marks");

<* Maps to get_date *>
extern fn glib::DateTime* Calendar.get_date(&self) @extern("gtk_calendar_get_date");

<* Maps to get_day *>
extern fn int Calendar.get_day(&self) @extern("gtk_calendar_get_day");

<* Maps to get_day_is_marked *>
extern fn bool Calendar.get_day_is_marked(&self, uint day) @extern("gtk_calendar_get_day_is_marked");

<* Maps to get_month *>
extern fn int Calendar.get_month(&self) @extern("gtk_calendar_get_month");

<* Maps to get_show_day_names *>
extern fn bool Calendar.get_show_day_names(&self) @extern("gtk_calendar_get_show_day_names");

<* Maps to get_show_heading *>
extern fn bool Calendar.get_show_heading(&self) @extern("gtk_calendar_get_show_heading");

<* Maps to get_show_week_numbers *>
extern fn bool Calendar.get_show_week_numbers(&self) @extern("gtk_calendar_get_show_week_numbers");

<* Maps to get_year *>
extern fn int Calendar.get_year(&self) @extern("gtk_calendar_get_year");

<* Maps to mark_day *>
extern fn void Calendar.mark_day(&self, uint day) @extern("gtk_calendar_mark_day");

<* Maps to select_day *>
extern fn void Calendar.select_day(&self, glib::DateTime* date) @extern("gtk_calendar_select_day");

<* Maps to set_day *>
extern fn void Calendar.set_day(&self, int day) @extern("gtk_calendar_set_day");

<* Maps to set_month *>
extern fn void Calendar.set_month(&self, int month) @extern("gtk_calendar_set_month");

<* Maps to set_show_day_names *>
extern fn void Calendar.set_show_day_names(&self, bool value) @extern("gtk_calendar_set_show_day_names");

<* Maps to set_show_heading *>
extern fn void Calendar.set_show_heading(&self, bool value) @extern("gtk_calendar_set_show_heading");

<* Maps to set_show_week_numbers *>
extern fn void Calendar.set_show_week_numbers(&self, bool value) @extern("gtk_calendar_set_show_week_numbers");

<* Maps to set_year *>
extern fn void Calendar.set_year(&self, int year) @extern("gtk_calendar_set_year");

<* Maps to unmark_day *>
extern fn void Calendar.unmark_day(&self, uint day) @extern("gtk_calendar_unmark_day");


<* Maps to GtkCallbackAction *>
distinct CallbackAction = void*;

fn ShortcutAction* CallbackAction.as_ShortcutAction(&self) => (ShortcutAction*)(self);



<* Maps to GtkCellArea *>
distinct CellArea = void*;

fn gobject::InitiallyUnowned* CellArea.as_gobject_InitiallyUnowned(&self) => (gobject::InitiallyUnowned*)(self);


<* Maps to activate *>
extern fn bool CellArea.activate(&self, CellAreaContext* context, Widget* widget, gdk::Rectangle* cell_area, CellRendererState flags, bool edit_only) @extern("gtk_cell_area_activate");

<* Maps to activate_cell *>
extern fn bool CellArea.activate_cell(&self, Widget* widget, CellRenderer* renderer, gdk::Event* event, gdk::Rectangle* cell_area, CellRendererState flags) @extern("gtk_cell_area_activate_cell");

<* Maps to add *>
extern fn void CellArea.add(&self, CellRenderer* renderer) @extern("gtk_cell_area_add");

<* Maps to add_focus_sibling *>
extern fn void CellArea.add_focus_sibling(&self, CellRenderer* renderer, CellRenderer* sibling) @extern("gtk_cell_area_add_focus_sibling");

<* Maps to add_with_properties *>
extern fn void CellArea.add_with_properties(&self, CellRenderer* renderer, ZString first_prop_name, any rest) @extern("gtk_cell_area_add_with_properties");

<* Maps to apply_attributes *>
extern fn void CellArea.apply_attributes(&self, TreeModel* tree_model, TreeIter* iter, bool is_expander, bool is_expanded) @extern("gtk_cell_area_apply_attributes");

<* Maps to attribute_connect *>
extern fn void CellArea.attribute_connect(&self, CellRenderer* renderer, ZString attribute, int column) @extern("gtk_cell_area_attribute_connect");

<* Maps to attribute_disconnect *>
extern fn void CellArea.attribute_disconnect(&self, CellRenderer* renderer, ZString attribute) @extern("gtk_cell_area_attribute_disconnect");

<* Maps to attribute_get_column *>
extern fn int CellArea.attribute_get_column(&self, CellRenderer* renderer, ZString attribute) @extern("gtk_cell_area_attribute_get_column");

<* Maps to cell_get *>
extern fn void CellArea.cell_get(&self, CellRenderer* renderer, ZString first_prop_name, any rest) @extern("gtk_cell_area_cell_get");

<* Maps to cell_get_property *>
extern fn void CellArea.cell_get_property(&self, CellRenderer* renderer, ZString property_name, gobject::Value* value) @extern("gtk_cell_area_cell_get_property");

<* Maps to cell_set *>
extern fn void CellArea.cell_set(&self, CellRenderer* renderer, ZString first_prop_name, any rest) @extern("gtk_cell_area_cell_set");

<* Maps to cell_set_property *>
extern fn void CellArea.cell_set_property(&self, CellRenderer* renderer, ZString property_name, gobject::Value* value) @extern("gtk_cell_area_cell_set_property");

<* Maps to copy_context *>
extern fn CellAreaContext* CellArea.copy_context(&self, CellAreaContext* context) @extern("gtk_cell_area_copy_context");

<* Maps to create_context *>
extern fn CellAreaContext* CellArea.create_context(&self) @extern("gtk_cell_area_create_context");

<* Maps to event *>
extern fn int CellArea.event(&self, CellAreaContext* context, Widget* widget, gdk::Event* event, gdk::Rectangle* cell_area, CellRendererState flags) @extern("gtk_cell_area_event");

<* Maps to focus *>
extern fn bool CellArea.focus(&self, DirectionType direction) @extern("gtk_cell_area_focus");

<* Maps to for_each *>
extern fn void CellArea.for_each(&self, CellCallback callback, void* callback_data) @extern("gtk_cell_area_foreach");

<* Maps to foreach_alloc *>
extern fn void CellArea.foreach_alloc(&self, CellAreaContext* context, Widget* widget, gdk::Rectangle* cell_area, gdk::Rectangle* background_area, CellAllocCallback callback, void* callback_data) @extern("gtk_cell_area_foreach_alloc");

<* Maps to get_cell_allocation *>
extern fn void CellArea.get_cell_allocation(&self, CellAreaContext* context, Widget* widget, CellRenderer* renderer, gdk::Rectangle* cell_area, gdk::Rectangle* allocation) @extern("gtk_cell_area_get_cell_allocation");

<* Maps to get_cell_at_position *>
extern fn CellRenderer* CellArea.get_cell_at_position(&self, CellAreaContext* context, Widget* widget, gdk::Rectangle* cell_area, int x, int y, gdk::Rectangle* alloc_area) @extern("gtk_cell_area_get_cell_at_position");

<* Maps to get_current_path_string *>
extern fn ZString CellArea.get_current_path_string(&self) @extern("gtk_cell_area_get_current_path_string");

<* Maps to get_edit_widget *>
extern fn CellEditable* CellArea.get_edit_widget(&self) @extern("gtk_cell_area_get_edit_widget");

<* Maps to get_edited_cell *>
extern fn CellRenderer* CellArea.get_edited_cell(&self) @extern("gtk_cell_area_get_edited_cell");

<* Maps to get_focus_cell *>
extern fn CellRenderer* CellArea.get_focus_cell(&self) @extern("gtk_cell_area_get_focus_cell");

<* Maps to get_focus_from_sibling *>
extern fn CellRenderer* CellArea.get_focus_from_sibling(&self, CellRenderer* renderer) @extern("gtk_cell_area_get_focus_from_sibling");

<* Maps to get_focus_siblings *>
extern fn glib::List* CellArea.get_focus_siblings(&self, CellRenderer* renderer) @extern("gtk_cell_area_get_focus_siblings");

<* Maps to get_preferred_height *>
extern fn void CellArea.get_preferred_height(&self, CellAreaContext* context, Widget* widget, int* minimum_height, int* natural_height) @extern("gtk_cell_area_get_preferred_height");

<* Maps to get_preferred_height_for_width *>
extern fn void CellArea.get_preferred_height_for_width(&self, CellAreaContext* context, Widget* widget, int width, int* minimum_height, int* natural_height) @extern("gtk_cell_area_get_preferred_height_for_width");

<* Maps to get_preferred_width *>
extern fn void CellArea.get_preferred_width(&self, CellAreaContext* context, Widget* widget, int* minimum_width, int* natural_width) @extern("gtk_cell_area_get_preferred_width");

<* Maps to get_preferred_width_for_height *>
extern fn void CellArea.get_preferred_width_for_height(&self, CellAreaContext* context, Widget* widget, int height, int* minimum_width, int* natural_width) @extern("gtk_cell_area_get_preferred_width_for_height");

<* Maps to get_request_mode *>
extern fn SizeRequestMode CellArea.get_request_mode(&self) @extern("gtk_cell_area_get_request_mode");

<* Maps to has_renderer *>
extern fn bool CellArea.has_renderer(&self, CellRenderer* renderer) @extern("gtk_cell_area_has_renderer");

<* Maps to inner_cell_area *>
extern fn void CellArea.inner_cell_area(&self, Widget* widget, gdk::Rectangle* cell_area, gdk::Rectangle* inner_area) @extern("gtk_cell_area_inner_cell_area");

<* Maps to is_activatable *>
extern fn bool CellArea.is_activatable(&self) @extern("gtk_cell_area_is_activatable");

<* Maps to is_focus_sibling *>
extern fn bool CellArea.is_focus_sibling(&self, CellRenderer* renderer, CellRenderer* sibling) @extern("gtk_cell_area_is_focus_sibling");

<* Maps to remove *>
extern fn void CellArea.remove(&self, CellRenderer* renderer) @extern("gtk_cell_area_remove");

<* Maps to remove_focus_sibling *>
extern fn void CellArea.remove_focus_sibling(&self, CellRenderer* renderer, CellRenderer* sibling) @extern("gtk_cell_area_remove_focus_sibling");

<* Maps to request_renderer *>
extern fn void CellArea.request_renderer(&self, CellRenderer* renderer, Orientation orientation, Widget* widget, int for_size, int* minimum_size, int* natural_size) @extern("gtk_cell_area_request_renderer");

<* Maps to set_focus_cell *>
extern fn void CellArea.set_focus_cell(&self, CellRenderer* renderer) @extern("gtk_cell_area_set_focus_cell");

<* Maps to snapshot *>
extern fn void CellArea.snapshot(&self, CellAreaContext* context, Widget* widget, Snapshot* snapshot, gdk::Rectangle* background_area, gdk::Rectangle* cell_area, CellRendererState flags, bool paint_focus) @extern("gtk_cell_area_snapshot");

<* Maps to stop_editing *>
extern fn void CellArea.stop_editing(&self, bool canceled) @extern("gtk_cell_area_stop_editing");


<* Maps to GtkCellAreaBox *>
distinct CellAreaBox = void*;

fn CellArea* CellAreaBox.as_CellArea(&self) => (CellArea*)(self);


<* Maps to get_spacing *>
extern fn int CellAreaBox.get_spacing(&self) @extern("gtk_cell_area_box_get_spacing");

<* Maps to pack_end *>
extern fn void CellAreaBox.pack_end(&self, CellRenderer* renderer, bool expand, bool align, bool fixed) @extern("gtk_cell_area_box_pack_end");

<* Maps to pack_start *>
extern fn void CellAreaBox.pack_start(&self, CellRenderer* renderer, bool expand, bool align, bool fixed) @extern("gtk_cell_area_box_pack_start");

<* Maps to set_spacing *>
extern fn void CellAreaBox.set_spacing(&self, int spacing) @extern("gtk_cell_area_box_set_spacing");


<* Maps to GtkCellAreaContext *>
distinct CellAreaContext = void*;

fn gobject::Object* CellAreaContext.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to allocate *>
extern fn void CellAreaContext.allocate(&self, int width, int height) @extern("gtk_cell_area_context_allocate");

<* Maps to get_allocation *>
extern fn void CellAreaContext.get_allocation(&self, int* width, int* height) @extern("gtk_cell_area_context_get_allocation");

<* Maps to get_area *>
extern fn CellArea* CellAreaContext.get_area(&self) @extern("gtk_cell_area_context_get_area");

<* Maps to get_preferred_height *>
extern fn void CellAreaContext.get_preferred_height(&self, int* minimum_height, int* natural_height) @extern("gtk_cell_area_context_get_preferred_height");

<* Maps to get_preferred_height_for_width *>
extern fn void CellAreaContext.get_preferred_height_for_width(&self, int width, int* minimum_height, int* natural_height) @extern("gtk_cell_area_context_get_preferred_height_for_width");

<* Maps to get_preferred_width *>
extern fn void CellAreaContext.get_preferred_width(&self, int* minimum_width, int* natural_width) @extern("gtk_cell_area_context_get_preferred_width");

<* Maps to get_preferred_width_for_height *>
extern fn void CellAreaContext.get_preferred_width_for_height(&self, int height, int* minimum_width, int* natural_width) @extern("gtk_cell_area_context_get_preferred_width_for_height");

<* Maps to push_preferred_height *>
extern fn void CellAreaContext.push_preferred_height(&self, int minimum_height, int natural_height) @extern("gtk_cell_area_context_push_preferred_height");

<* Maps to push_preferred_width *>
extern fn void CellAreaContext.push_preferred_width(&self, int minimum_width, int natural_width) @extern("gtk_cell_area_context_push_preferred_width");

<* Maps to reset *>
extern fn void CellAreaContext.reset(&self) @extern("gtk_cell_area_context_reset");


<* Maps to GtkCellRenderer *>
distinct CellRenderer = void*;

fn gobject::InitiallyUnowned* CellRenderer.as_gobject_InitiallyUnowned(&self) => (gobject::InitiallyUnowned*)(self);


<* Maps to activate *>
extern fn bool CellRenderer.activate(&self, gdk::Event* event, Widget* widget, ZString path, gdk::Rectangle* background_area, gdk::Rectangle* cell_area, CellRendererState flags) @extern("gtk_cell_renderer_activate");

<* Maps to get_aligned_area *>
extern fn void CellRenderer.get_aligned_area(&self, Widget* widget, CellRendererState flags, gdk::Rectangle* cell_area, gdk::Rectangle* aligned_area) @extern("gtk_cell_renderer_get_aligned_area");

<* Maps to get_alignment *>
extern fn void CellRenderer.get_alignment(&self, float* xalign, float* yalign) @extern("gtk_cell_renderer_get_alignment");

<* Maps to get_fixed_size *>
extern fn void CellRenderer.get_fixed_size(&self, int* width, int* height) @extern("gtk_cell_renderer_get_fixed_size");

<* Maps to get_is_expanded *>
extern fn bool CellRenderer.get_is_expanded(&self) @extern("gtk_cell_renderer_get_is_expanded");

<* Maps to get_is_expander *>
extern fn bool CellRenderer.get_is_expander(&self) @extern("gtk_cell_renderer_get_is_expander");

<* Maps to get_padding *>
extern fn void CellRenderer.get_padding(&self, int* xpad, int* ypad) @extern("gtk_cell_renderer_get_padding");

<* Maps to get_preferred_height *>
extern fn void CellRenderer.get_preferred_height(&self, Widget* widget, int* minimum_size, int* natural_size) @extern("gtk_cell_renderer_get_preferred_height");

<* Maps to get_preferred_height_for_width *>
extern fn void CellRenderer.get_preferred_height_for_width(&self, Widget* widget, int width, int* minimum_height, int* natural_height) @extern("gtk_cell_renderer_get_preferred_height_for_width");

<* Maps to get_preferred_size *>
extern fn void CellRenderer.get_preferred_size(&self, Widget* widget, Requisition* minimum_size, Requisition* natural_size) @extern("gtk_cell_renderer_get_preferred_size");

<* Maps to get_preferred_width *>
extern fn void CellRenderer.get_preferred_width(&self, Widget* widget, int* minimum_size, int* natural_size) @extern("gtk_cell_renderer_get_preferred_width");

<* Maps to get_preferred_width_for_height *>
extern fn void CellRenderer.get_preferred_width_for_height(&self, Widget* widget, int height, int* minimum_width, int* natural_width) @extern("gtk_cell_renderer_get_preferred_width_for_height");

<* Maps to get_request_mode *>
extern fn SizeRequestMode CellRenderer.get_request_mode(&self) @extern("gtk_cell_renderer_get_request_mode");

<* Maps to get_sensitive *>
extern fn bool CellRenderer.get_sensitive(&self) @extern("gtk_cell_renderer_get_sensitive");

<* Maps to get_state *>
extern fn StateFlags CellRenderer.get_state(&self, Widget* widget, CellRendererState cell_state) @extern("gtk_cell_renderer_get_state");

<* Maps to get_visible *>
extern fn bool CellRenderer.get_visible(&self) @extern("gtk_cell_renderer_get_visible");

<* Maps to is_activatable *>
extern fn bool CellRenderer.is_activatable(&self) @extern("gtk_cell_renderer_is_activatable");

<* Maps to set_alignment *>
extern fn void CellRenderer.set_alignment(&self, float xalign, float yalign) @extern("gtk_cell_renderer_set_alignment");

<* Maps to set_fixed_size *>
extern fn void CellRenderer.set_fixed_size(&self, int width, int height) @extern("gtk_cell_renderer_set_fixed_size");

<* Maps to set_is_expanded *>
extern fn void CellRenderer.set_is_expanded(&self, bool is_expanded) @extern("gtk_cell_renderer_set_is_expanded");

<* Maps to set_is_expander *>
extern fn void CellRenderer.set_is_expander(&self, bool is_expander) @extern("gtk_cell_renderer_set_is_expander");

<* Maps to set_padding *>
extern fn void CellRenderer.set_padding(&self, int xpad, int ypad) @extern("gtk_cell_renderer_set_padding");

<* Maps to set_sensitive *>
extern fn void CellRenderer.set_sensitive(&self, bool sensitive) @extern("gtk_cell_renderer_set_sensitive");

<* Maps to set_visible *>
extern fn void CellRenderer.set_visible(&self, bool visible) @extern("gtk_cell_renderer_set_visible");

<* Maps to snapshot *>
extern fn void CellRenderer.snapshot(&self, Snapshot* snapshot, Widget* widget, gdk::Rectangle* background_area, gdk::Rectangle* cell_area, CellRendererState flags) @extern("gtk_cell_renderer_snapshot");

<* Maps to start_editing *>
extern fn CellEditable* CellRenderer.start_editing(&self, gdk::Event* event, Widget* widget, ZString path, gdk::Rectangle* background_area, gdk::Rectangle* cell_area, CellRendererState flags) @extern("gtk_cell_renderer_start_editing");

<* Maps to stop_editing *>
extern fn void CellRenderer.stop_editing(&self, bool canceled) @extern("gtk_cell_renderer_stop_editing");


<* Maps to GtkCellRendererAccel *>
distinct CellRendererAccel = void*;

fn CellRendererText* CellRendererAccel.as_CellRendererText(&self) => (CellRendererText*)(self);



<* Maps to GtkCellRendererCombo *>
distinct CellRendererCombo = void*;

fn CellRendererText* CellRendererCombo.as_CellRendererText(&self) => (CellRendererText*)(self);



<* Maps to GtkCellRendererPixbuf *>
distinct CellRendererPixbuf = void*;

fn CellRenderer* CellRendererPixbuf.as_CellRenderer(&self) => (CellRenderer*)(self);



<* Maps to GtkCellRendererProgress *>
distinct CellRendererProgress = void*;

fn CellRenderer* CellRendererProgress.as_CellRenderer(&self) => (CellRenderer*)(self);



<* Maps to GtkCellRendererSpin *>
distinct CellRendererSpin = void*;

fn CellRendererText* CellRendererSpin.as_CellRendererText(&self) => (CellRendererText*)(self);



<* Maps to GtkCellRendererSpinner *>
distinct CellRendererSpinner = void*;

fn CellRenderer* CellRendererSpinner.as_CellRenderer(&self) => (CellRenderer*)(self);



<* Maps to GtkCellRendererText *>
distinct CellRendererText = void*;

fn CellRenderer* CellRendererText.as_CellRenderer(&self) => (CellRenderer*)(self);


<* Maps to set_fixed_height_from_font *>
extern fn void CellRendererText.set_fixed_height_from_font(&self, int number_of_rows) @extern("gtk_cell_renderer_text_set_fixed_height_from_font");


<* Maps to GtkCellRendererToggle *>
distinct CellRendererToggle = void*;

fn CellRenderer* CellRendererToggle.as_CellRenderer(&self) => (CellRenderer*)(self);


<* Maps to get_activatable *>
extern fn bool CellRendererToggle.get_activatable(&self) @extern("gtk_cell_renderer_toggle_get_activatable");

<* Maps to get_active *>
extern fn bool CellRendererToggle.get_active(&self) @extern("gtk_cell_renderer_toggle_get_active");

<* Maps to get_radio *>
extern fn bool CellRendererToggle.get_radio(&self) @extern("gtk_cell_renderer_toggle_get_radio");

<* Maps to set_activatable *>
extern fn void CellRendererToggle.set_activatable(&self, bool setting) @extern("gtk_cell_renderer_toggle_set_activatable");

<* Maps to set_active *>
extern fn void CellRendererToggle.set_active(&self, bool setting) @extern("gtk_cell_renderer_toggle_set_active");

<* Maps to set_radio *>
extern fn void CellRendererToggle.set_radio(&self, bool radio) @extern("gtk_cell_renderer_toggle_set_radio");


<* Maps to GtkCellView *>
distinct CellView = void*;

fn Widget* CellView.as_Widget(&self) => (Widget*)(self);


<* Maps to get_displayed_row *>
extern fn TreePath* CellView.get_displayed_row(&self) @extern("gtk_cell_view_get_displayed_row");

<* Maps to get_draw_sensitive *>
extern fn bool CellView.get_draw_sensitive(&self) @extern("gtk_cell_view_get_draw_sensitive");

<* Maps to get_fit_model *>
extern fn bool CellView.get_fit_model(&self) @extern("gtk_cell_view_get_fit_model");

<* Maps to get_model *>
extern fn TreeModel* CellView.get_model(&self) @extern("gtk_cell_view_get_model");

<* Maps to set_displayed_row *>
extern fn void CellView.set_displayed_row(&self, TreePath* path) @extern("gtk_cell_view_set_displayed_row");

<* Maps to set_draw_sensitive *>
extern fn void CellView.set_draw_sensitive(&self, bool draw_sensitive) @extern("gtk_cell_view_set_draw_sensitive");

<* Maps to set_fit_model *>
extern fn void CellView.set_fit_model(&self, bool fit_model) @extern("gtk_cell_view_set_fit_model");

<* Maps to set_model *>
extern fn void CellView.set_model(&self, TreeModel* model) @extern("gtk_cell_view_set_model");


<* Maps to GtkCenterBox *>
distinct CenterBox = void*;

fn Widget* CenterBox.as_Widget(&self) => (Widget*)(self);


<* Maps to get_baseline_position *>
extern fn BaselinePosition CenterBox.get_baseline_position(&self) @extern("gtk_center_box_get_baseline_position");

<* Maps to get_center_widget *>
extern fn Widget* CenterBox.get_center_widget(&self) @extern("gtk_center_box_get_center_widget");

<* Maps to get_end_widget *>
extern fn Widget* CenterBox.get_end_widget(&self) @extern("gtk_center_box_get_end_widget");

<* Maps to get_shrink_center_last *>
extern fn bool CenterBox.get_shrink_center_last(&self) @extern("gtk_center_box_get_shrink_center_last");

<* Maps to get_start_widget *>
extern fn Widget* CenterBox.get_start_widget(&self) @extern("gtk_center_box_get_start_widget");

<* Maps to set_baseline_position *>
extern fn void CenterBox.set_baseline_position(&self, BaselinePosition position) @extern("gtk_center_box_set_baseline_position");

<* Maps to set_center_widget *>
extern fn void CenterBox.set_center_widget(&self, Widget* child) @extern("gtk_center_box_set_center_widget");

<* Maps to set_end_widget *>
extern fn void CenterBox.set_end_widget(&self, Widget* child) @extern("gtk_center_box_set_end_widget");

<* Maps to set_shrink_center_last *>
extern fn void CenterBox.set_shrink_center_last(&self, bool shrink_center_last) @extern("gtk_center_box_set_shrink_center_last");

<* Maps to set_start_widget *>
extern fn void CenterBox.set_start_widget(&self, Widget* child) @extern("gtk_center_box_set_start_widget");


<* Maps to GtkCenterLayout *>
distinct CenterLayout = void*;

fn LayoutManager* CenterLayout.as_LayoutManager(&self) => (LayoutManager*)(self);


<* Maps to get_baseline_position *>
extern fn BaselinePosition CenterLayout.get_baseline_position(&self) @extern("gtk_center_layout_get_baseline_position");

<* Maps to get_center_widget *>
extern fn Widget* CenterLayout.get_center_widget(&self) @extern("gtk_center_layout_get_center_widget");

<* Maps to get_end_widget *>
extern fn Widget* CenterLayout.get_end_widget(&self) @extern("gtk_center_layout_get_end_widget");

<* Maps to get_orientation *>
extern fn Orientation CenterLayout.get_orientation(&self) @extern("gtk_center_layout_get_orientation");

<* Maps to get_shrink_center_last *>
extern fn bool CenterLayout.get_shrink_center_last(&self) @extern("gtk_center_layout_get_shrink_center_last");

<* Maps to get_start_widget *>
extern fn Widget* CenterLayout.get_start_widget(&self) @extern("gtk_center_layout_get_start_widget");

<* Maps to set_baseline_position *>
extern fn void CenterLayout.set_baseline_position(&self, BaselinePosition baseline_position) @extern("gtk_center_layout_set_baseline_position");

<* Maps to set_center_widget *>
extern fn void CenterLayout.set_center_widget(&self, Widget* widget) @extern("gtk_center_layout_set_center_widget");

<* Maps to set_end_widget *>
extern fn void CenterLayout.set_end_widget(&self, Widget* widget) @extern("gtk_center_layout_set_end_widget");

<* Maps to set_orientation *>
extern fn void CenterLayout.set_orientation(&self, Orientation orientation) @extern("gtk_center_layout_set_orientation");

<* Maps to set_shrink_center_last *>
extern fn void CenterLayout.set_shrink_center_last(&self, bool shrink_center_last) @extern("gtk_center_layout_set_shrink_center_last");

<* Maps to set_start_widget *>
extern fn void CenterLayout.set_start_widget(&self, Widget* widget) @extern("gtk_center_layout_set_start_widget");


<* Maps to GtkCheckButton *>
distinct CheckButton = void*;

fn Widget* CheckButton.as_Widget(&self) => (Widget*)(self);


<* Maps to get_active *>
extern fn bool CheckButton.get_active(&self) @extern("gtk_check_button_get_active");

<* Maps to get_child *>
extern fn Widget* CheckButton.get_child(&self) @extern("gtk_check_button_get_child");

<* Maps to get_inconsistent *>
extern fn bool CheckButton.get_inconsistent(&self) @extern("gtk_check_button_get_inconsistent");

<* Maps to get_label *>
extern fn ZString CheckButton.get_label(&self) @extern("gtk_check_button_get_label");

<* Maps to get_use_underline *>
extern fn bool CheckButton.get_use_underline(&self) @extern("gtk_check_button_get_use_underline");

<* Maps to set_active *>
extern fn void CheckButton.set_active(&self, bool setting) @extern("gtk_check_button_set_active");

<* Maps to set_child *>
extern fn void CheckButton.set_child(&self, Widget* child) @extern("gtk_check_button_set_child");

<* Maps to set_group *>
extern fn void CheckButton.set_group(&self, CheckButton* group) @extern("gtk_check_button_set_group");

<* Maps to set_inconsistent *>
extern fn void CheckButton.set_inconsistent(&self, bool inconsistent) @extern("gtk_check_button_set_inconsistent");

<* Maps to set_label *>
extern fn void CheckButton.set_label(&self, ZString label) @extern("gtk_check_button_set_label");

<* Maps to set_use_underline *>
extern fn void CheckButton.set_use_underline(&self, bool setting) @extern("gtk_check_button_set_use_underline");


<* Maps to GtkClosureExpression *>
distinct ClosureExpression = void*;

fn Expression* ClosureExpression.as_Expression(&self) => (Expression*)(self);



<* Maps to GtkColorButton *>
distinct ColorButton = void*;

fn Widget* ColorButton.as_Widget(&self) => (Widget*)(self);


<* Maps to get_modal *>
extern fn bool ColorButton.get_modal(&self) @extern("gtk_color_button_get_modal");

<* Maps to get_title *>
extern fn ZString ColorButton.get_title(&self) @extern("gtk_color_button_get_title");

<* Maps to set_modal *>
extern fn void ColorButton.set_modal(&self, bool modal) @extern("gtk_color_button_set_modal");

<* Maps to set_title *>
extern fn void ColorButton.set_title(&self, ZString title) @extern("gtk_color_button_set_title");


<* Maps to GtkColorChooserDialog *>
distinct ColorChooserDialog = void*;

fn Dialog* ColorChooserDialog.as_Dialog(&self) => (Dialog*)(self);



<* Maps to GtkColorChooserWidget *>
distinct ColorChooserWidget = void*;

fn Widget* ColorChooserWidget.as_Widget(&self) => (Widget*)(self);



<* Maps to GtkColorDialog *>
distinct ColorDialog = void*;

fn gobject::Object* ColorDialog.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to choose_rgba *>
extern fn void ColorDialog.choose_rgba(&self, Window* parent, gdk::Rgba* initial_color, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gtk_color_dialog_choose_rgba");

<* Maps to choose_rgba_finish *>
extern fn gdk::Rgba* ColorDialog.choose_rgba_finish(&self, gio::AsyncResult* result) @extern("gtk_color_dialog_choose_rgba_finish");

<* Maps to get_modal *>
extern fn bool ColorDialog.get_modal(&self) @extern("gtk_color_dialog_get_modal");

<* Maps to get_title *>
extern fn ZString ColorDialog.get_title(&self) @extern("gtk_color_dialog_get_title");

<* Maps to get_with_alpha *>
extern fn bool ColorDialog.get_with_alpha(&self) @extern("gtk_color_dialog_get_with_alpha");

<* Maps to set_modal *>
extern fn void ColorDialog.set_modal(&self, bool modal) @extern("gtk_color_dialog_set_modal");

<* Maps to set_title *>
extern fn void ColorDialog.set_title(&self, ZString title) @extern("gtk_color_dialog_set_title");

<* Maps to set_with_alpha *>
extern fn void ColorDialog.set_with_alpha(&self, bool with_alpha) @extern("gtk_color_dialog_set_with_alpha");


<* Maps to GtkColorDialogButton *>
distinct ColorDialogButton = void*;

fn Widget* ColorDialogButton.as_Widget(&self) => (Widget*)(self);


<* Maps to get_dialog *>
extern fn ColorDialog* ColorDialogButton.get_dialog(&self) @extern("gtk_color_dialog_button_get_dialog");

<* Maps to get_rgba *>
extern fn gdk::Rgba* ColorDialogButton.get_rgba(&self) @extern("gtk_color_dialog_button_get_rgba");

<* Maps to set_dialog *>
extern fn void ColorDialogButton.set_dialog(&self, ColorDialog* dialog) @extern("gtk_color_dialog_button_set_dialog");

<* Maps to set_rgba *>
extern fn void ColorDialogButton.set_rgba(&self, gdk::Rgba* color) @extern("gtk_color_dialog_button_set_rgba");


<* Maps to GtkColumnView *>
distinct ColumnView = void*;

fn Widget* ColumnView.as_Widget(&self) => (Widget*)(self);


<* Maps to append_column *>
extern fn void ColumnView.append_column(&self, ColumnViewColumn* column) @extern("gtk_column_view_append_column");

<* Maps to get_columns *>
extern fn gio::ListModel* ColumnView.get_columns(&self) @extern("gtk_column_view_get_columns");

<* Maps to get_enable_rubberband *>
extern fn bool ColumnView.get_enable_rubberband(&self) @extern("gtk_column_view_get_enable_rubberband");

<* Maps to get_header_factory *>
extern fn ListItemFactory* ColumnView.get_header_factory(&self) @extern("gtk_column_view_get_header_factory");

<* Maps to get_model *>
extern fn SelectionModel* ColumnView.get_model(&self) @extern("gtk_column_view_get_model");

<* Maps to get_reorderable *>
extern fn bool ColumnView.get_reorderable(&self) @extern("gtk_column_view_get_reorderable");

<* Maps to get_row_factory *>
extern fn ListItemFactory* ColumnView.get_row_factory(&self) @extern("gtk_column_view_get_row_factory");

<* Maps to get_show_column_separators *>
extern fn bool ColumnView.get_show_column_separators(&self) @extern("gtk_column_view_get_show_column_separators");

<* Maps to get_show_row_separators *>
extern fn bool ColumnView.get_show_row_separators(&self) @extern("gtk_column_view_get_show_row_separators");

<* Maps to get_single_click_activate *>
extern fn bool ColumnView.get_single_click_activate(&self) @extern("gtk_column_view_get_single_click_activate");

<* Maps to get_sorter *>
extern fn Sorter* ColumnView.get_sorter(&self) @extern("gtk_column_view_get_sorter");

<* Maps to get_tab_behavior *>
extern fn ListTabBehavior ColumnView.get_tab_behavior(&self) @extern("gtk_column_view_get_tab_behavior");

<* Maps to insert_column *>
extern fn void ColumnView.insert_column(&self, uint position, ColumnViewColumn* column) @extern("gtk_column_view_insert_column");

<* Maps to remove_column *>
extern fn void ColumnView.remove_column(&self, ColumnViewColumn* column) @extern("gtk_column_view_remove_column");

<* Maps to scroll_to *>
extern fn void ColumnView.scroll_to(&self, uint pos, ColumnViewColumn* column, ListScrollFlags flags, ScrollInfo* scroll) @extern("gtk_column_view_scroll_to");

<* Maps to set_enable_rubberband *>
extern fn void ColumnView.set_enable_rubberband(&self, bool enable_rubberband) @extern("gtk_column_view_set_enable_rubberband");

<* Maps to set_header_factory *>
extern fn void ColumnView.set_header_factory(&self, ListItemFactory* factory) @extern("gtk_column_view_set_header_factory");

<* Maps to set_model *>
extern fn void ColumnView.set_model(&self, SelectionModel* model) @extern("gtk_column_view_set_model");

<* Maps to set_reorderable *>
extern fn void ColumnView.set_reorderable(&self, bool reorderable) @extern("gtk_column_view_set_reorderable");

<* Maps to set_row_factory *>
extern fn void ColumnView.set_row_factory(&self, ListItemFactory* factory) @extern("gtk_column_view_set_row_factory");

<* Maps to set_show_column_separators *>
extern fn void ColumnView.set_show_column_separators(&self, bool show_column_separators) @extern("gtk_column_view_set_show_column_separators");

<* Maps to set_show_row_separators *>
extern fn void ColumnView.set_show_row_separators(&self, bool show_row_separators) @extern("gtk_column_view_set_show_row_separators");

<* Maps to set_single_click_activate *>
extern fn void ColumnView.set_single_click_activate(&self, bool single_click_activate) @extern("gtk_column_view_set_single_click_activate");

<* Maps to set_tab_behavior *>
extern fn void ColumnView.set_tab_behavior(&self, ListTabBehavior tab_behavior) @extern("gtk_column_view_set_tab_behavior");

<* Maps to sort_by_column *>
extern fn void ColumnView.sort_by_column(&self, ColumnViewColumn* column, SortType direction) @extern("gtk_column_view_sort_by_column");


<* Maps to GtkColumnViewCell *>
distinct ColumnViewCell = void*;

fn ListItem* ColumnViewCell.as_ListItem(&self) => (ListItem*)(self);


<* Maps to get_child *>
extern fn Widget* ColumnViewCell.get_child(&self) @extern("gtk_column_view_cell_get_child");

<* Maps to get_focusable *>
extern fn bool ColumnViewCell.get_focusable(&self) @extern("gtk_column_view_cell_get_focusable");

<* Maps to get_item *>
extern fn gobject::Object* ColumnViewCell.get_item(&self) @extern("gtk_column_view_cell_get_item");

<* Maps to get_position *>
extern fn uint ColumnViewCell.get_position(&self) @extern("gtk_column_view_cell_get_position");

<* Maps to get_selected *>
extern fn bool ColumnViewCell.get_selected(&self) @extern("gtk_column_view_cell_get_selected");

<* Maps to set_child *>
extern fn void ColumnViewCell.set_child(&self, Widget* child) @extern("gtk_column_view_cell_set_child");

<* Maps to set_focusable *>
extern fn void ColumnViewCell.set_focusable(&self, bool focusable) @extern("gtk_column_view_cell_set_focusable");


<* Maps to GtkColumnViewColumn *>
distinct ColumnViewColumn = void*;

fn gobject::Object* ColumnViewColumn.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_column_view *>
extern fn ColumnView* ColumnViewColumn.get_column_view(&self) @extern("gtk_column_view_column_get_column_view");

<* Maps to get_expand *>
extern fn bool ColumnViewColumn.get_expand(&self) @extern("gtk_column_view_column_get_expand");

<* Maps to get_factory *>
extern fn ListItemFactory* ColumnViewColumn.get_factory(&self) @extern("gtk_column_view_column_get_factory");

<* Maps to get_fixed_width *>
extern fn int ColumnViewColumn.get_fixed_width(&self) @extern("gtk_column_view_column_get_fixed_width");

<* Maps to get_header_menu *>
extern fn gio::MenuModel* ColumnViewColumn.get_header_menu(&self) @extern("gtk_column_view_column_get_header_menu");

<* Maps to get_id *>
extern fn ZString ColumnViewColumn.get_id(&self) @extern("gtk_column_view_column_get_id");

<* Maps to get_resizable *>
extern fn bool ColumnViewColumn.get_resizable(&self) @extern("gtk_column_view_column_get_resizable");

<* Maps to get_sorter *>
extern fn Sorter* ColumnViewColumn.get_sorter(&self) @extern("gtk_column_view_column_get_sorter");

<* Maps to get_title *>
extern fn ZString ColumnViewColumn.get_title(&self) @extern("gtk_column_view_column_get_title");

<* Maps to get_visible *>
extern fn bool ColumnViewColumn.get_visible(&self) @extern("gtk_column_view_column_get_visible");

<* Maps to set_expand *>
extern fn void ColumnViewColumn.set_expand(&self, bool expand) @extern("gtk_column_view_column_set_expand");

<* Maps to set_factory *>
extern fn void ColumnViewColumn.set_factory(&self, ListItemFactory* factory) @extern("gtk_column_view_column_set_factory");

<* Maps to set_fixed_width *>
extern fn void ColumnViewColumn.set_fixed_width(&self, int fixed_width) @extern("gtk_column_view_column_set_fixed_width");

<* Maps to set_header_menu *>
extern fn void ColumnViewColumn.set_header_menu(&self, gio::MenuModel* menu) @extern("gtk_column_view_column_set_header_menu");

<* Maps to set_id *>
extern fn void ColumnViewColumn.set_id(&self, ZString id) @extern("gtk_column_view_column_set_id");

<* Maps to set_resizable *>
extern fn void ColumnViewColumn.set_resizable(&self, bool resizable) @extern("gtk_column_view_column_set_resizable");

<* Maps to set_sorter *>
extern fn void ColumnViewColumn.set_sorter(&self, Sorter* sorter) @extern("gtk_column_view_column_set_sorter");

<* Maps to set_title *>
extern fn void ColumnViewColumn.set_title(&self, ZString title) @extern("gtk_column_view_column_set_title");

<* Maps to set_visible *>
extern fn void ColumnViewColumn.set_visible(&self, bool visible) @extern("gtk_column_view_column_set_visible");


<* Maps to GtkColumnViewRow *>
distinct ColumnViewRow = void*;

fn gobject::Object* ColumnViewRow.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_accessible_description *>
extern fn ZString ColumnViewRow.get_accessible_description(&self) @extern("gtk_column_view_row_get_accessible_description");

<* Maps to get_accessible_label *>
extern fn ZString ColumnViewRow.get_accessible_label(&self) @extern("gtk_column_view_row_get_accessible_label");

<* Maps to get_activatable *>
extern fn bool ColumnViewRow.get_activatable(&self) @extern("gtk_column_view_row_get_activatable");

<* Maps to get_focusable *>
extern fn bool ColumnViewRow.get_focusable(&self) @extern("gtk_column_view_row_get_focusable");

<* Maps to get_item *>
extern fn gobject::Object* ColumnViewRow.get_item(&self) @extern("gtk_column_view_row_get_item");

<* Maps to get_position *>
extern fn uint ColumnViewRow.get_position(&self) @extern("gtk_column_view_row_get_position");

<* Maps to get_selectable *>
extern fn bool ColumnViewRow.get_selectable(&self) @extern("gtk_column_view_row_get_selectable");

<* Maps to get_selected *>
extern fn bool ColumnViewRow.get_selected(&self) @extern("gtk_column_view_row_get_selected");

<* Maps to set_accessible_description *>
extern fn void ColumnViewRow.set_accessible_description(&self, ZString description) @extern("gtk_column_view_row_set_accessible_description");

<* Maps to set_accessible_label *>
extern fn void ColumnViewRow.set_accessible_label(&self, ZString label) @extern("gtk_column_view_row_set_accessible_label");

<* Maps to set_activatable *>
extern fn void ColumnViewRow.set_activatable(&self, bool activatable) @extern("gtk_column_view_row_set_activatable");

<* Maps to set_focusable *>
extern fn void ColumnViewRow.set_focusable(&self, bool focusable) @extern("gtk_column_view_row_set_focusable");

<* Maps to set_selectable *>
extern fn void ColumnViewRow.set_selectable(&self, bool selectable) @extern("gtk_column_view_row_set_selectable");


<* Maps to GtkColumnViewSorter *>
distinct ColumnViewSorter = void*;

fn Sorter* ColumnViewSorter.as_Sorter(&self) => (Sorter*)(self);


<* Maps to get_n_sort_columns *>
extern fn uint ColumnViewSorter.get_n_sort_columns(&self) @extern("gtk_column_view_sorter_get_n_sort_columns");

<* Maps to get_nth_sort_column *>
extern fn ColumnViewColumn* ColumnViewSorter.get_nth_sort_column(&self, uint position, SortType* sort_order) @extern("gtk_column_view_sorter_get_nth_sort_column");

<* Maps to get_primary_sort_column *>
extern fn ColumnViewColumn* ColumnViewSorter.get_primary_sort_column(&self) @extern("gtk_column_view_sorter_get_primary_sort_column");

<* Maps to get_primary_sort_order *>
extern fn SortType ColumnViewSorter.get_primary_sort_order(&self) @extern("gtk_column_view_sorter_get_primary_sort_order");


<* Maps to GtkComboBox *>
distinct ComboBox = void*;

fn Widget* ComboBox.as_Widget(&self) => (Widget*)(self);


<* Maps to get_active *>
extern fn int ComboBox.get_active(&self) @extern("gtk_combo_box_get_active");

<* Maps to get_active_id *>
extern fn ZString ComboBox.get_active_id(&self) @extern("gtk_combo_box_get_active_id");

<* Maps to get_active_iter *>
extern fn bool ComboBox.get_active_iter(&self, TreeIter* iter) @extern("gtk_combo_box_get_active_iter");

<* Maps to get_button_sensitivity *>
extern fn SensitivityType ComboBox.get_button_sensitivity(&self) @extern("gtk_combo_box_get_button_sensitivity");

<* Maps to get_child *>
extern fn Widget* ComboBox.get_child(&self) @extern("gtk_combo_box_get_child");

<* Maps to get_entry_text_column *>
extern fn int ComboBox.get_entry_text_column(&self) @extern("gtk_combo_box_get_entry_text_column");

<* Maps to get_has_entry *>
extern fn bool ComboBox.get_has_entry(&self) @extern("gtk_combo_box_get_has_entry");

<* Maps to get_id_column *>
extern fn int ComboBox.get_id_column(&self) @extern("gtk_combo_box_get_id_column");

<* Maps to get_model *>
extern fn TreeModel* ComboBox.get_model(&self) @extern("gtk_combo_box_get_model");

<* Maps to get_popup_fixed_width *>
extern fn bool ComboBox.get_popup_fixed_width(&self) @extern("gtk_combo_box_get_popup_fixed_width");

<* Maps to get_row_separator_func *>
extern fn TreeViewRowSeparatorFunc ComboBox.get_row_separator_func(&self) @extern("gtk_combo_box_get_row_separator_func");

<* Maps to popdown *>
extern fn void ComboBox.popdown(&self) @extern("gtk_combo_box_popdown");

<* Maps to popup *>
extern fn void ComboBox.popup(&self) @extern("gtk_combo_box_popup");

<* Maps to popup_for_device *>
extern fn void ComboBox.popup_for_device(&self, gdk::Device* device) @extern("gtk_combo_box_popup_for_device");

<* Maps to set_active *>
extern fn void ComboBox.set_active(&self, int index_) @extern("gtk_combo_box_set_active");

<* Maps to set_active_id *>
extern fn bool ComboBox.set_active_id(&self, ZString active_id) @extern("gtk_combo_box_set_active_id");

<* Maps to set_active_iter *>
extern fn void ComboBox.set_active_iter(&self, TreeIter* iter) @extern("gtk_combo_box_set_active_iter");

<* Maps to set_button_sensitivity *>
extern fn void ComboBox.set_button_sensitivity(&self, SensitivityType sensitivity) @extern("gtk_combo_box_set_button_sensitivity");

<* Maps to set_child *>
extern fn void ComboBox.set_child(&self, Widget* child) @extern("gtk_combo_box_set_child");

<* Maps to set_entry_text_column *>
extern fn void ComboBox.set_entry_text_column(&self, int text_column) @extern("gtk_combo_box_set_entry_text_column");

<* Maps to set_id_column *>
extern fn void ComboBox.set_id_column(&self, int id_column) @extern("gtk_combo_box_set_id_column");

<* Maps to set_model *>
extern fn void ComboBox.set_model(&self, TreeModel* model) @extern("gtk_combo_box_set_model");

<* Maps to set_popup_fixed_width *>
extern fn void ComboBox.set_popup_fixed_width(&self, bool fixed) @extern("gtk_combo_box_set_popup_fixed_width");

<* Maps to set_row_separator_func *>
extern fn void ComboBox.set_row_separator_func(&self, TreeViewRowSeparatorFunc func, void* data, glib::DestroyNotify destroy) @extern("gtk_combo_box_set_row_separator_func");


<* Maps to GtkComboBoxText *>
distinct ComboBoxText = void*;

fn ComboBox* ComboBoxText.as_ComboBox(&self) => (ComboBox*)(self);


<* Maps to append *>
extern fn void ComboBoxText.append(&self, ZString id, ZString text) @extern("gtk_combo_box_text_append");

<* Maps to append_text *>
extern fn void ComboBoxText.append_text(&self, ZString text) @extern("gtk_combo_box_text_append_text");

<* Maps to get_active_text *>
extern fn ZString* ComboBoxText.get_active_text(&self) @extern("gtk_combo_box_text_get_active_text");

<* Maps to insert *>
extern fn void ComboBoxText.insert(&self, int position, ZString id, ZString text) @extern("gtk_combo_box_text_insert");

<* Maps to insert_text *>
extern fn void ComboBoxText.insert_text(&self, int position, ZString text) @extern("gtk_combo_box_text_insert_text");

<* Maps to prepend *>
extern fn void ComboBoxText.prepend(&self, ZString id, ZString text) @extern("gtk_combo_box_text_prepend");

<* Maps to prepend_text *>
extern fn void ComboBoxText.prepend_text(&self, ZString text) @extern("gtk_combo_box_text_prepend_text");

<* Maps to remove *>
extern fn void ComboBoxText.remove(&self, int position) @extern("gtk_combo_box_text_remove");

<* Maps to remove_all *>
extern fn void ComboBoxText.remove_all(&self) @extern("gtk_combo_box_text_remove_all");


<* Maps to GtkConstantExpression *>
distinct ConstantExpression = void*;

fn Expression* ConstantExpression.as_Expression(&self) => (Expression*)(self);


<* Maps to get_value *>
extern fn gobject::Value* ConstantExpression.get_value(&self) @extern("gtk_constant_expression_get_value");


<* Maps to GtkConstraint *>
distinct Constraint = void*;

fn gobject::Object* Constraint.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_constant *>
extern fn double Constraint.get_constant(&self) @extern("gtk_constraint_get_constant");

<* Maps to get_multiplier *>
extern fn double Constraint.get_multiplier(&self) @extern("gtk_constraint_get_multiplier");

<* Maps to get_relation *>
extern fn ConstraintRelation Constraint.get_relation(&self) @extern("gtk_constraint_get_relation");

<* Maps to get_source *>
extern fn ConstraintTarget* Constraint.get_source(&self) @extern("gtk_constraint_get_source");

<* Maps to get_source_attribute *>
extern fn ConstraintAttribute Constraint.get_source_attribute(&self) @extern("gtk_constraint_get_source_attribute");

<* Maps to get_strength *>
extern fn int Constraint.get_strength(&self) @extern("gtk_constraint_get_strength");

<* Maps to get_target *>
extern fn ConstraintTarget* Constraint.get_target(&self) @extern("gtk_constraint_get_target");

<* Maps to get_target_attribute *>
extern fn ConstraintAttribute Constraint.get_target_attribute(&self) @extern("gtk_constraint_get_target_attribute");

<* Maps to is_attached *>
extern fn bool Constraint.is_attached(&self) @extern("gtk_constraint_is_attached");

<* Maps to is_constant *>
extern fn bool Constraint.is_constant(&self) @extern("gtk_constraint_is_constant");

<* Maps to is_required *>
extern fn bool Constraint.is_required(&self) @extern("gtk_constraint_is_required");


<* Maps to GtkConstraintGuide *>
distinct ConstraintGuide = void*;

fn gobject::Object* ConstraintGuide.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_max_size *>
extern fn void ConstraintGuide.get_max_size(&self, int* width, int* height) @extern("gtk_constraint_guide_get_max_size");

<* Maps to get_min_size *>
extern fn void ConstraintGuide.get_min_size(&self, int* width, int* height) @extern("gtk_constraint_guide_get_min_size");

<* Maps to get_name *>
extern fn ZString ConstraintGuide.get_name(&self) @extern("gtk_constraint_guide_get_name");

<* Maps to get_nat_size *>
extern fn void ConstraintGuide.get_nat_size(&self, int* width, int* height) @extern("gtk_constraint_guide_get_nat_size");

<* Maps to get_strength *>
extern fn ConstraintStrength ConstraintGuide.get_strength(&self) @extern("gtk_constraint_guide_get_strength");

<* Maps to set_max_size *>
extern fn void ConstraintGuide.set_max_size(&self, int width, int height) @extern("gtk_constraint_guide_set_max_size");

<* Maps to set_min_size *>
extern fn void ConstraintGuide.set_min_size(&self, int width, int height) @extern("gtk_constraint_guide_set_min_size");

<* Maps to set_name *>
extern fn void ConstraintGuide.set_name(&self, ZString name) @extern("gtk_constraint_guide_set_name");

<* Maps to set_nat_size *>
extern fn void ConstraintGuide.set_nat_size(&self, int width, int height) @extern("gtk_constraint_guide_set_nat_size");

<* Maps to set_strength *>
extern fn void ConstraintGuide.set_strength(&self, ConstraintStrength strength) @extern("gtk_constraint_guide_set_strength");


<* Maps to GtkConstraintLayout *>
distinct ConstraintLayout = void*;

fn LayoutManager* ConstraintLayout.as_LayoutManager(&self) => (LayoutManager*)(self);


<* Maps to add_constraint *>
extern fn void ConstraintLayout.add_constraint(&self, Constraint* constraint) @extern("gtk_constraint_layout_add_constraint");

<* Maps to add_constraints_from_description *>
extern fn glib::List* ConstraintLayout.add_constraints_from_description(&self, ZString* lines, usz n_lines, int hspacing, int vspacing, glib::Error* error, ZString first_view, any rest) @extern("gtk_constraint_layout_add_constraints_from_description");

<* Maps to add_constraints_from_descriptionv *>
extern fn glib::List* ConstraintLayout.add_constraints_from_descriptionv(&self, ZString* lines, usz n_lines, int hspacing, int vspacing, glib::HashTable* views) @extern("gtk_constraint_layout_add_constraints_from_descriptionv");

<* Maps to add_guide *>
extern fn void ConstraintLayout.add_guide(&self, ConstraintGuide* guide) @extern("gtk_constraint_layout_add_guide");

<* Maps to observe_constraints *>
extern fn gio::ListModel* ConstraintLayout.observe_constraints(&self) @extern("gtk_constraint_layout_observe_constraints");

<* Maps to observe_guides *>
extern fn gio::ListModel* ConstraintLayout.observe_guides(&self) @extern("gtk_constraint_layout_observe_guides");

<* Maps to remove_all_constraints *>
extern fn void ConstraintLayout.remove_all_constraints(&self) @extern("gtk_constraint_layout_remove_all_constraints");

<* Maps to remove_constraint *>
extern fn void ConstraintLayout.remove_constraint(&self, Constraint* constraint) @extern("gtk_constraint_layout_remove_constraint");

<* Maps to remove_guide *>
extern fn void ConstraintLayout.remove_guide(&self, ConstraintGuide* guide) @extern("gtk_constraint_layout_remove_guide");


<* Maps to GtkConstraintLayoutChild *>
distinct ConstraintLayoutChild = void*;

fn LayoutChild* ConstraintLayoutChild.as_LayoutChild(&self) => (LayoutChild*)(self);



<* Maps to GtkCssProvider *>
distinct CssProvider = void*;

fn gobject::Object* CssProvider.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to load_from_bytes *>
extern fn void CssProvider.load_from_bytes(&self, glib::Bytes* data) @extern("gtk_css_provider_load_from_bytes");

<* Maps to load_from_data *>
extern fn void CssProvider.load_from_data(&self, ZString data, isz length) @extern("gtk_css_provider_load_from_data");

<* Maps to load_from_file *>
extern fn void CssProvider.load_from_file(&self, gio::File* file) @extern("gtk_css_provider_load_from_file");

<* Maps to load_from_path *>
extern fn void CssProvider.load_from_path(&self, ZString path) @extern("gtk_css_provider_load_from_path");

<* Maps to load_from_resource *>
extern fn void CssProvider.load_from_resource(&self, ZString resource_path) @extern("gtk_css_provider_load_from_resource");

<* Maps to load_from_string *>
extern fn void CssProvider.load_from_string(&self, ZString string) @extern("gtk_css_provider_load_from_string");

<* Maps to load_named *>
extern fn void CssProvider.load_named(&self, ZString name, ZString variant) @extern("gtk_css_provider_load_named");

<* Maps to to_string *>
extern fn ZString* CssProvider.to_string(&self) @extern("gtk_css_provider_to_string");


<* Maps to GtkCustomFilter *>
distinct CustomFilter = void*;

fn Filter* CustomFilter.as_Filter(&self) => (Filter*)(self);


<* Maps to set_filter_func *>
extern fn void CustomFilter.set_filter_func(&self, CustomFilterFunc match_func, void* user_data, glib::DestroyNotify user_destroy) @extern("gtk_custom_filter_set_filter_func");


<* Maps to GtkCustomLayout *>
distinct CustomLayout = void*;

fn LayoutManager* CustomLayout.as_LayoutManager(&self) => (LayoutManager*)(self);



<* Maps to GtkCustomSorter *>
distinct CustomSorter = void*;

fn Sorter* CustomSorter.as_Sorter(&self) => (Sorter*)(self);


<* Maps to set_sort_func *>
extern fn void CustomSorter.set_sort_func(&self, glib::CompareDataFunc sort_func, void* user_data, glib::DestroyNotify user_destroy) @extern("gtk_custom_sorter_set_sort_func");


<* Maps to GtkDialog *>
distinct Dialog = void*;

fn Window* Dialog.as_Window(&self) => (Window*)(self);


<* Maps to add_action_widget *>
extern fn void Dialog.add_action_widget(&self, Widget* child, int response_id) @extern("gtk_dialog_add_action_widget");

<* Maps to add_button *>
extern fn Widget* Dialog.add_button(&self, ZString button_text, int response_id) @extern("gtk_dialog_add_button");

<* Maps to add_buttons *>
extern fn void Dialog.add_buttons(&self, ZString first_button_text, any rest) @extern("gtk_dialog_add_buttons");

<* Maps to get_content_area *>
extern fn Box* Dialog.get_content_area(&self) @extern("gtk_dialog_get_content_area");

<* Maps to get_header_bar *>
extern fn HeaderBar* Dialog.get_header_bar(&self) @extern("gtk_dialog_get_header_bar");

<* Maps to get_response_for_widget *>
extern fn int Dialog.get_response_for_widget(&self, Widget* widget) @extern("gtk_dialog_get_response_for_widget");

<* Maps to get_widget_for_response *>
extern fn Widget* Dialog.get_widget_for_response(&self, int response_id) @extern("gtk_dialog_get_widget_for_response");

<* Maps to response *>
extern fn void Dialog.response(&self, int response_id) @extern("gtk_dialog_response");

<* Maps to set_default_response *>
extern fn void Dialog.set_default_response(&self, int response_id) @extern("gtk_dialog_set_default_response");

<* Maps to set_response_sensitive *>
extern fn void Dialog.set_response_sensitive(&self, int response_id, bool setting) @extern("gtk_dialog_set_response_sensitive");


<* Maps to GtkDirectoryList *>
distinct DirectoryList = void*;

fn gobject::Object* DirectoryList.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_attributes *>
extern fn ZString DirectoryList.get_attributes(&self) @extern("gtk_directory_list_get_attributes");

<* Maps to get_error *>
extern fn glib::Error* DirectoryList.get_error(&self) @extern("gtk_directory_list_get_error");

<* Maps to get_file *>
extern fn gio::File* DirectoryList.get_file(&self) @extern("gtk_directory_list_get_file");

<* Maps to get_io_priority *>
extern fn int DirectoryList.get_io_priority(&self) @extern("gtk_directory_list_get_io_priority");

<* Maps to get_monitored *>
extern fn bool DirectoryList.get_monitored(&self) @extern("gtk_directory_list_get_monitored");

<* Maps to is_loading *>
extern fn bool DirectoryList.is_loading(&self) @extern("gtk_directory_list_is_loading");

<* Maps to set_attributes *>
extern fn void DirectoryList.set_attributes(&self, ZString attributes) @extern("gtk_directory_list_set_attributes");

<* Maps to set_file *>
extern fn void DirectoryList.set_file(&self, gio::File* file) @extern("gtk_directory_list_set_file");

<* Maps to set_io_priority *>
extern fn void DirectoryList.set_io_priority(&self, int io_priority) @extern("gtk_directory_list_set_io_priority");

<* Maps to set_monitored *>
extern fn void DirectoryList.set_monitored(&self, bool monitored) @extern("gtk_directory_list_set_monitored");


<* Maps to GtkDragIcon *>
distinct DragIcon = void*;

fn Widget* DragIcon.as_Widget(&self) => (Widget*)(self);


<* Maps to get_child *>
extern fn Widget* DragIcon.get_child(&self) @extern("gtk_drag_icon_get_child");

<* Maps to set_child *>
extern fn void DragIcon.set_child(&self, Widget* child) @extern("gtk_drag_icon_set_child");


<* Maps to GtkDragSource *>
distinct DragSource = void*;

fn GestureSingle* DragSource.as_GestureSingle(&self) => (GestureSingle*)(self);


<* Maps to drag_cancel *>
extern fn void DragSource.drag_cancel(&self) @extern("gtk_drag_source_drag_cancel");

<* Maps to get_actions *>
extern fn gdk::DragAction DragSource.get_actions(&self) @extern("gtk_drag_source_get_actions");

<* Maps to get_content *>
extern fn gdk::ContentProvider* DragSource.get_content(&self) @extern("gtk_drag_source_get_content");

<* Maps to get_drag *>
extern fn gdk::Drag* DragSource.get_drag(&self) @extern("gtk_drag_source_get_drag");

<* Maps to set_actions *>
extern fn void DragSource.set_actions(&self, gdk::DragAction actions) @extern("gtk_drag_source_set_actions");

<* Maps to set_content *>
extern fn void DragSource.set_content(&self, gdk::ContentProvider* content) @extern("gtk_drag_source_set_content");

<* Maps to set_icon *>
extern fn void DragSource.set_icon(&self, gdk::Paintable* paintable, int hot_x, int hot_y) @extern("gtk_drag_source_set_icon");


<* Maps to GtkDrawingArea *>
distinct DrawingArea = void*;

fn Widget* DrawingArea.as_Widget(&self) => (Widget*)(self);


<* Maps to get_content_height *>
extern fn int DrawingArea.get_content_height(&self) @extern("gtk_drawing_area_get_content_height");

<* Maps to get_content_width *>
extern fn int DrawingArea.get_content_width(&self) @extern("gtk_drawing_area_get_content_width");

<* Maps to set_content_height *>
extern fn void DrawingArea.set_content_height(&self, int height) @extern("gtk_drawing_area_set_content_height");

<* Maps to set_content_width *>
extern fn void DrawingArea.set_content_width(&self, int width) @extern("gtk_drawing_area_set_content_width");

<* Maps to set_draw_func *>
extern fn void DrawingArea.set_draw_func(&self, DrawingAreaDrawFunc draw_func, void* user_data, glib::DestroyNotify destroy) @extern("gtk_drawing_area_set_draw_func");


<* Maps to GtkDropControllerMotion *>
distinct DropControllerMotion = void*;

fn EventController* DropControllerMotion.as_EventController(&self) => (EventController*)(self);


<* Maps to contains_pointer *>
extern fn bool DropControllerMotion.contains_pointer(&self) @extern("gtk_drop_controller_motion_contains_pointer");

<* Maps to get_drop *>
extern fn gdk::Drop* DropControllerMotion.get_drop(&self) @extern("gtk_drop_controller_motion_get_drop");

<* Maps to is_pointer *>
extern fn bool DropControllerMotion.is_pointer(&self) @extern("gtk_drop_controller_motion_is_pointer");


<* Maps to GtkDropDown *>
distinct DropDown = void*;

fn Widget* DropDown.as_Widget(&self) => (Widget*)(self);


<* Maps to get_enable_search *>
extern fn bool DropDown.get_enable_search(&self) @extern("gtk_drop_down_get_enable_search");

<* Maps to get_expression *>
extern fn Expression* DropDown.get_expression(&self) @extern("gtk_drop_down_get_expression");

<* Maps to get_factory *>
extern fn ListItemFactory* DropDown.get_factory(&self) @extern("gtk_drop_down_get_factory");

<* Maps to get_header_factory *>
extern fn ListItemFactory* DropDown.get_header_factory(&self) @extern("gtk_drop_down_get_header_factory");

<* Maps to get_list_factory *>
extern fn ListItemFactory* DropDown.get_list_factory(&self) @extern("gtk_drop_down_get_list_factory");

<* Maps to get_model *>
extern fn gio::ListModel* DropDown.get_model(&self) @extern("gtk_drop_down_get_model");

<* Maps to get_search_match_mode *>
extern fn StringFilterMatchMode DropDown.get_search_match_mode(&self) @extern("gtk_drop_down_get_search_match_mode");

<* Maps to get_selected *>
extern fn uint DropDown.get_selected(&self) @extern("gtk_drop_down_get_selected");

<* Maps to get_selected_item *>
extern fn gobject::Object* DropDown.get_selected_item(&self) @extern("gtk_drop_down_get_selected_item");

<* Maps to get_show_arrow *>
extern fn bool DropDown.get_show_arrow(&self) @extern("gtk_drop_down_get_show_arrow");

<* Maps to set_enable_search *>
extern fn void DropDown.set_enable_search(&self, bool enable_search) @extern("gtk_drop_down_set_enable_search");

<* Maps to set_expression *>
extern fn void DropDown.set_expression(&self, Expression* expression) @extern("gtk_drop_down_set_expression");

<* Maps to set_factory *>
extern fn void DropDown.set_factory(&self, ListItemFactory* factory) @extern("gtk_drop_down_set_factory");

<* Maps to set_header_factory *>
extern fn void DropDown.set_header_factory(&self, ListItemFactory* factory) @extern("gtk_drop_down_set_header_factory");

<* Maps to set_list_factory *>
extern fn void DropDown.set_list_factory(&self, ListItemFactory* factory) @extern("gtk_drop_down_set_list_factory");

<* Maps to set_model *>
extern fn void DropDown.set_model(&self, gio::ListModel* model) @extern("gtk_drop_down_set_model");

<* Maps to set_search_match_mode *>
extern fn void DropDown.set_search_match_mode(&self, StringFilterMatchMode search_match_mode) @extern("gtk_drop_down_set_search_match_mode");

<* Maps to set_selected *>
extern fn void DropDown.set_selected(&self, uint position) @extern("gtk_drop_down_set_selected");

<* Maps to set_show_arrow *>
extern fn void DropDown.set_show_arrow(&self, bool show_arrow) @extern("gtk_drop_down_set_show_arrow");


<* Maps to GtkDropTarget *>
distinct DropTarget = void*;

fn EventController* DropTarget.as_EventController(&self) => (EventController*)(self);


<* Maps to get_actions *>
extern fn gdk::DragAction DropTarget.get_actions(&self) @extern("gtk_drop_target_get_actions");

<* Maps to get_current_drop *>
extern fn gdk::Drop* DropTarget.get_current_drop(&self) @extern("gtk_drop_target_get_current_drop");

<* Maps to get_drop *>
extern fn gdk::Drop* DropTarget.get_drop(&self) @extern("gtk_drop_target_get_drop");

<* Maps to get_formats *>
extern fn gdk::ContentFormats* DropTarget.get_formats(&self) @extern("gtk_drop_target_get_formats");

<* Maps to get_gtypes *>
extern fn usz DropTarget.get_gtypes(&self, usz* n_types) @extern("gtk_drop_target_get_gtypes");

<* Maps to get_preload *>
extern fn bool DropTarget.get_preload(&self) @extern("gtk_drop_target_get_preload");

<* Maps to get_value *>
extern fn gobject::Value* DropTarget.get_value(&self) @extern("gtk_drop_target_get_value");

<* Maps to reject *>
extern fn void DropTarget.reject(&self) @extern("gtk_drop_target_reject");

<* Maps to set_actions *>
extern fn void DropTarget.set_actions(&self, gdk::DragAction actions) @extern("gtk_drop_target_set_actions");

<* Maps to set_gtypes *>
extern fn void DropTarget.set_gtypes(&self, usz types, usz n_types) @extern("gtk_drop_target_set_gtypes");

<* Maps to set_preload *>
extern fn void DropTarget.set_preload(&self, bool preload) @extern("gtk_drop_target_set_preload");


<* Maps to GtkDropTargetAsync *>
distinct DropTargetAsync = void*;

fn EventController* DropTargetAsync.as_EventController(&self) => (EventController*)(self);


<* Maps to get_actions *>
extern fn gdk::DragAction DropTargetAsync.get_actions(&self) @extern("gtk_drop_target_async_get_actions");

<* Maps to get_formats *>
extern fn gdk::ContentFormats* DropTargetAsync.get_formats(&self) @extern("gtk_drop_target_async_get_formats");

<* Maps to reject_drop *>
extern fn void DropTargetAsync.reject_drop(&self, gdk::Drop* drop) @extern("gtk_drop_target_async_reject_drop");

<* Maps to set_actions *>
extern fn void DropTargetAsync.set_actions(&self, gdk::DragAction actions) @extern("gtk_drop_target_async_set_actions");

<* Maps to set_formats *>
extern fn void DropTargetAsync.set_formats(&self, gdk::ContentFormats* formats) @extern("gtk_drop_target_async_set_formats");


<* Maps to GtkEditableLabel *>
distinct EditableLabel = void*;

fn Widget* EditableLabel.as_Widget(&self) => (Widget*)(self);


<* Maps to get_editing *>
extern fn bool EditableLabel.get_editing(&self) @extern("gtk_editable_label_get_editing");

<* Maps to start_editing *>
extern fn void EditableLabel.start_editing(&self) @extern("gtk_editable_label_start_editing");

<* Maps to stop_editing *>
extern fn void EditableLabel.stop_editing(&self, bool commit) @extern("gtk_editable_label_stop_editing");


<* Maps to GtkEmojiChooser *>
distinct EmojiChooser = void*;

fn Popover* EmojiChooser.as_Popover(&self) => (Popover*)(self);



<* Maps to GtkEntry *>
distinct Entry = void*;

fn Widget* Entry.as_Widget(&self) => (Widget*)(self);


<* Maps to get_activates_default *>
extern fn bool Entry.get_activates_default(&self) @extern("gtk_entry_get_activates_default");

<* Maps to get_alignment *>
extern fn float Entry.get_alignment(&self) @extern("gtk_entry_get_alignment");

<* Maps to get_attributes *>
extern fn pango::AttrList* Entry.get_attributes(&self) @extern("gtk_entry_get_attributes");

<* Maps to get_buffer *>
extern fn EntryBuffer* Entry.get_buffer(&self) @extern("gtk_entry_get_buffer");

<* Maps to get_completion *>
extern fn EntryCompletion* Entry.get_completion(&self) @extern("gtk_entry_get_completion");

<* Maps to get_current_icon_drag_source *>
extern fn int Entry.get_current_icon_drag_source(&self) @extern("gtk_entry_get_current_icon_drag_source");

<* Maps to get_extra_menu *>
extern fn gio::MenuModel* Entry.get_extra_menu(&self) @extern("gtk_entry_get_extra_menu");

<* Maps to get_has_frame *>
extern fn bool Entry.get_has_frame(&self) @extern("gtk_entry_get_has_frame");

<* Maps to get_icon_activatable *>
extern fn bool Entry.get_icon_activatable(&self, EntryIconPosition icon_pos) @extern("gtk_entry_get_icon_activatable");

<* Maps to get_icon_area *>
extern fn void Entry.get_icon_area(&self, EntryIconPosition icon_pos, gdk::Rectangle* icon_area) @extern("gtk_entry_get_icon_area");

<* Maps to get_icon_at_pos *>
extern fn int Entry.get_icon_at_pos(&self, int x, int y) @extern("gtk_entry_get_icon_at_pos");

<* Maps to get_icon_gicon *>
extern fn gio::Icon* Entry.get_icon_gicon(&self, EntryIconPosition icon_pos) @extern("gtk_entry_get_icon_gicon");

<* Maps to get_icon_name *>
extern fn ZString Entry.get_icon_name(&self, EntryIconPosition icon_pos) @extern("gtk_entry_get_icon_name");

<* Maps to get_icon_paintable *>
extern fn gdk::Paintable* Entry.get_icon_paintable(&self, EntryIconPosition icon_pos) @extern("gtk_entry_get_icon_paintable");

<* Maps to get_icon_sensitive *>
extern fn bool Entry.get_icon_sensitive(&self, EntryIconPosition icon_pos) @extern("gtk_entry_get_icon_sensitive");

<* Maps to get_icon_storage_type *>
extern fn ImageType Entry.get_icon_storage_type(&self, EntryIconPosition icon_pos) @extern("gtk_entry_get_icon_storage_type");

<* Maps to get_icon_tooltip_markup *>
extern fn ZString* Entry.get_icon_tooltip_markup(&self, EntryIconPosition icon_pos) @extern("gtk_entry_get_icon_tooltip_markup");

<* Maps to get_icon_tooltip_text *>
extern fn ZString* Entry.get_icon_tooltip_text(&self, EntryIconPosition icon_pos) @extern("gtk_entry_get_icon_tooltip_text");

<* Maps to get_input_hints *>
extern fn InputHints Entry.get_input_hints(&self) @extern("gtk_entry_get_input_hints");

<* Maps to get_input_purpose *>
extern fn InputPurpose Entry.get_input_purpose(&self) @extern("gtk_entry_get_input_purpose");

<* Maps to get_invisible_char *>
extern fn uint Entry.get_invisible_char(&self) @extern("gtk_entry_get_invisible_char");

<* Maps to get_max_length *>
extern fn int Entry.get_max_length(&self) @extern("gtk_entry_get_max_length");

<* Maps to get_overwrite_mode *>
extern fn bool Entry.get_overwrite_mode(&self) @extern("gtk_entry_get_overwrite_mode");

<* Maps to get_placeholder_text *>
extern fn ZString Entry.get_placeholder_text(&self) @extern("gtk_entry_get_placeholder_text");

<* Maps to get_progress_fraction *>
extern fn double Entry.get_progress_fraction(&self) @extern("gtk_entry_get_progress_fraction");

<* Maps to get_progress_pulse_step *>
extern fn double Entry.get_progress_pulse_step(&self) @extern("gtk_entry_get_progress_pulse_step");

<* Maps to get_tabs *>
extern fn pango::TabArray* Entry.get_tabs(&self) @extern("gtk_entry_get_tabs");

<* Maps to get_text_length *>
extern fn ushort Entry.get_text_length(&self) @extern("gtk_entry_get_text_length");

<* Maps to get_visibility *>
extern fn bool Entry.get_visibility(&self) @extern("gtk_entry_get_visibility");

<* Maps to grab_focus_without_selecting *>
extern fn bool Entry.grab_focus_without_selecting(&self) @extern("gtk_entry_grab_focus_without_selecting");

<* Maps to progress_pulse *>
extern fn void Entry.progress_pulse(&self) @extern("gtk_entry_progress_pulse");

<* Maps to reset_im_context *>
extern fn void Entry.reset_im_context(&self) @extern("gtk_entry_reset_im_context");

<* Maps to set_activates_default *>
extern fn void Entry.set_activates_default(&self, bool setting) @extern("gtk_entry_set_activates_default");

<* Maps to set_alignment *>
extern fn void Entry.set_alignment(&self, float xalign) @extern("gtk_entry_set_alignment");

<* Maps to set_attributes *>
extern fn void Entry.set_attributes(&self, pango::AttrList* attrs) @extern("gtk_entry_set_attributes");

<* Maps to set_buffer *>
extern fn void Entry.set_buffer(&self, EntryBuffer* buffer) @extern("gtk_entry_set_buffer");

<* Maps to set_completion *>
extern fn void Entry.set_completion(&self, EntryCompletion* completion) @extern("gtk_entry_set_completion");

<* Maps to set_extra_menu *>
extern fn void Entry.set_extra_menu(&self, gio::MenuModel* model) @extern("gtk_entry_set_extra_menu");

<* Maps to set_has_frame *>
extern fn void Entry.set_has_frame(&self, bool setting) @extern("gtk_entry_set_has_frame");

<* Maps to set_icon_activatable *>
extern fn void Entry.set_icon_activatable(&self, EntryIconPosition icon_pos, bool activatable) @extern("gtk_entry_set_icon_activatable");

<* Maps to set_icon_drag_source *>
extern fn void Entry.set_icon_drag_source(&self, EntryIconPosition icon_pos, gdk::ContentProvider* provider, gdk::DragAction actions) @extern("gtk_entry_set_icon_drag_source");

<* Maps to set_icon_from_gicon *>
extern fn void Entry.set_icon_from_gicon(&self, EntryIconPosition icon_pos, gio::Icon* icon) @extern("gtk_entry_set_icon_from_gicon");

<* Maps to set_icon_from_icon_name *>
extern fn void Entry.set_icon_from_icon_name(&self, EntryIconPosition icon_pos, ZString icon_name) @extern("gtk_entry_set_icon_from_icon_name");

<* Maps to set_icon_from_paintable *>
extern fn void Entry.set_icon_from_paintable(&self, EntryIconPosition icon_pos, gdk::Paintable* paintable) @extern("gtk_entry_set_icon_from_paintable");

<* Maps to set_icon_sensitive *>
extern fn void Entry.set_icon_sensitive(&self, EntryIconPosition icon_pos, bool sensitive) @extern("gtk_entry_set_icon_sensitive");

<* Maps to set_icon_tooltip_markup *>
extern fn void Entry.set_icon_tooltip_markup(&self, EntryIconPosition icon_pos, ZString tooltip) @extern("gtk_entry_set_icon_tooltip_markup");

<* Maps to set_icon_tooltip_text *>
extern fn void Entry.set_icon_tooltip_text(&self, EntryIconPosition icon_pos, ZString tooltip) @extern("gtk_entry_set_icon_tooltip_text");

<* Maps to set_input_hints *>
extern fn void Entry.set_input_hints(&self, InputHints hints) @extern("gtk_entry_set_input_hints");

<* Maps to set_input_purpose *>
extern fn void Entry.set_input_purpose(&self, InputPurpose purpose) @extern("gtk_entry_set_input_purpose");

<* Maps to set_invisible_char *>
extern fn void Entry.set_invisible_char(&self, uint ch) @extern("gtk_entry_set_invisible_char");

<* Maps to set_max_length *>
extern fn void Entry.set_max_length(&self, int max) @extern("gtk_entry_set_max_length");

<* Maps to set_overwrite_mode *>
extern fn void Entry.set_overwrite_mode(&self, bool overwrite) @extern("gtk_entry_set_overwrite_mode");

<* Maps to set_placeholder_text *>
extern fn void Entry.set_placeholder_text(&self, ZString text) @extern("gtk_entry_set_placeholder_text");

<* Maps to set_progress_fraction *>
extern fn void Entry.set_progress_fraction(&self, double fraction) @extern("gtk_entry_set_progress_fraction");

<* Maps to set_progress_pulse_step *>
extern fn void Entry.set_progress_pulse_step(&self, double fraction) @extern("gtk_entry_set_progress_pulse_step");

<* Maps to set_tabs *>
extern fn void Entry.set_tabs(&self, pango::TabArray* tabs) @extern("gtk_entry_set_tabs");

<* Maps to set_visibility *>
extern fn void Entry.set_visibility(&self, bool visible) @extern("gtk_entry_set_visibility");

<* Maps to unset_invisible_char *>
extern fn void Entry.unset_invisible_char(&self) @extern("gtk_entry_unset_invisible_char");


<* Maps to GtkEntryBuffer *>
distinct EntryBuffer = void*;

fn gobject::Object* EntryBuffer.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to delete_text *>
extern fn uint EntryBuffer.delete_text(&self, uint position, int n_chars) @extern("gtk_entry_buffer_delete_text");

<* Maps to emit_deleted_text *>
extern fn void EntryBuffer.emit_deleted_text(&self, uint position, uint n_chars) @extern("gtk_entry_buffer_emit_deleted_text");

<* Maps to emit_inserted_text *>
extern fn void EntryBuffer.emit_inserted_text(&self, uint position, ZString chars, uint n_chars) @extern("gtk_entry_buffer_emit_inserted_text");

<* Maps to get_bytes *>
extern fn usz EntryBuffer.get_bytes(&self) @extern("gtk_entry_buffer_get_bytes");

<* Maps to get_length *>
extern fn uint EntryBuffer.get_length(&self) @extern("gtk_entry_buffer_get_length");

<* Maps to get_max_length *>
extern fn int EntryBuffer.get_max_length(&self) @extern("gtk_entry_buffer_get_max_length");

<* Maps to get_text *>
extern fn ZString EntryBuffer.get_text(&self) @extern("gtk_entry_buffer_get_text");

<* Maps to insert_text *>
extern fn uint EntryBuffer.insert_text(&self, uint position, ZString chars, int n_chars) @extern("gtk_entry_buffer_insert_text");

<* Maps to set_max_length *>
extern fn void EntryBuffer.set_max_length(&self, int max_length) @extern("gtk_entry_buffer_set_max_length");

<* Maps to set_text *>
extern fn void EntryBuffer.set_text(&self, ZString chars, int n_chars) @extern("gtk_entry_buffer_set_text");


<* Maps to GtkEntryCompletion *>
distinct EntryCompletion = void*;

fn gobject::Object* EntryCompletion.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to complete *>
extern fn void EntryCompletion.complete(&self) @extern("gtk_entry_completion_complete");

<* Maps to compute_prefix *>
extern fn ZString* EntryCompletion.compute_prefix(&self, ZString key) @extern("gtk_entry_completion_compute_prefix");

<* Maps to get_completion_prefix *>
extern fn ZString EntryCompletion.get_completion_prefix(&self) @extern("gtk_entry_completion_get_completion_prefix");

<* Maps to get_entry *>
extern fn Widget* EntryCompletion.get_entry(&self) @extern("gtk_entry_completion_get_entry");

<* Maps to get_inline_completion *>
extern fn bool EntryCompletion.get_inline_completion(&self) @extern("gtk_entry_completion_get_inline_completion");

<* Maps to get_inline_selection *>
extern fn bool EntryCompletion.get_inline_selection(&self) @extern("gtk_entry_completion_get_inline_selection");

<* Maps to get_minimum_key_length *>
extern fn int EntryCompletion.get_minimum_key_length(&self) @extern("gtk_entry_completion_get_minimum_key_length");

<* Maps to get_model *>
extern fn TreeModel* EntryCompletion.get_model(&self) @extern("gtk_entry_completion_get_model");

<* Maps to get_popup_completion *>
extern fn bool EntryCompletion.get_popup_completion(&self) @extern("gtk_entry_completion_get_popup_completion");

<* Maps to get_popup_set_width *>
extern fn bool EntryCompletion.get_popup_set_width(&self) @extern("gtk_entry_completion_get_popup_set_width");

<* Maps to get_popup_single_match *>
extern fn bool EntryCompletion.get_popup_single_match(&self) @extern("gtk_entry_completion_get_popup_single_match");

<* Maps to get_text_column *>
extern fn int EntryCompletion.get_text_column(&self) @extern("gtk_entry_completion_get_text_column");

<* Maps to insert_prefix *>
extern fn void EntryCompletion.insert_prefix(&self) @extern("gtk_entry_completion_insert_prefix");

<* Maps to set_inline_completion *>
extern fn void EntryCompletion.set_inline_completion(&self, bool inline_completion) @extern("gtk_entry_completion_set_inline_completion");

<* Maps to set_inline_selection *>
extern fn void EntryCompletion.set_inline_selection(&self, bool inline_selection) @extern("gtk_entry_completion_set_inline_selection");

<* Maps to set_match_func *>
extern fn void EntryCompletion.set_match_func(&self, EntryCompletionMatchFunc func, void* func_data, glib::DestroyNotify func_notify) @extern("gtk_entry_completion_set_match_func");

<* Maps to set_minimum_key_length *>
extern fn void EntryCompletion.set_minimum_key_length(&self, int length) @extern("gtk_entry_completion_set_minimum_key_length");

<* Maps to set_model *>
extern fn void EntryCompletion.set_model(&self, TreeModel* model) @extern("gtk_entry_completion_set_model");

<* Maps to set_popup_completion *>
extern fn void EntryCompletion.set_popup_completion(&self, bool popup_completion) @extern("gtk_entry_completion_set_popup_completion");

<* Maps to set_popup_set_width *>
extern fn void EntryCompletion.set_popup_set_width(&self, bool popup_set_width) @extern("gtk_entry_completion_set_popup_set_width");

<* Maps to set_popup_single_match *>
extern fn void EntryCompletion.set_popup_single_match(&self, bool popup_single_match) @extern("gtk_entry_completion_set_popup_single_match");

<* Maps to set_text_column *>
extern fn void EntryCompletion.set_text_column(&self, int column) @extern("gtk_entry_completion_set_text_column");


<* Maps to GtkEventController *>
distinct EventController = void*;

fn gobject::Object* EventController.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_current_event *>
extern fn gdk::Event* EventController.get_current_event(&self) @extern("gtk_event_controller_get_current_event");

<* Maps to get_current_event_device *>
extern fn gdk::Device* EventController.get_current_event_device(&self) @extern("gtk_event_controller_get_current_event_device");

<* Maps to get_current_event_state *>
extern fn gdk::ModifierType EventController.get_current_event_state(&self) @extern("gtk_event_controller_get_current_event_state");

<* Maps to get_current_event_time *>
extern fn uint EventController.get_current_event_time(&self) @extern("gtk_event_controller_get_current_event_time");

<* Maps to get_name *>
extern fn ZString EventController.get_name(&self) @extern("gtk_event_controller_get_name");

<* Maps to get_propagation_limit *>
extern fn PropagationLimit EventController.get_propagation_limit(&self) @extern("gtk_event_controller_get_propagation_limit");

<* Maps to get_propagation_phase *>
extern fn PropagationPhase EventController.get_propagation_phase(&self) @extern("gtk_event_controller_get_propagation_phase");

<* Maps to get_widget *>
extern fn Widget* EventController.get_widget(&self) @extern("gtk_event_controller_get_widget");

<* Maps to reset *>
extern fn void EventController.reset(&self) @extern("gtk_event_controller_reset");

<* Maps to set_name *>
extern fn void EventController.set_name(&self, ZString name) @extern("gtk_event_controller_set_name");

<* Maps to set_propagation_limit *>
extern fn void EventController.set_propagation_limit(&self, PropagationLimit limit) @extern("gtk_event_controller_set_propagation_limit");

<* Maps to set_propagation_phase *>
extern fn void EventController.set_propagation_phase(&self, PropagationPhase phase) @extern("gtk_event_controller_set_propagation_phase");

<* Maps to set_static_name *>
extern fn void EventController.set_static_name(&self, ZString name) @extern("gtk_event_controller_set_static_name");


<* Maps to GtkEventControllerFocus *>
distinct EventControllerFocus = void*;

fn EventController* EventControllerFocus.as_EventController(&self) => (EventController*)(self);


<* Maps to contains_focus *>
extern fn bool EventControllerFocus.contains_focus(&self) @extern("gtk_event_controller_focus_contains_focus");

<* Maps to is_focus *>
extern fn bool EventControllerFocus.is_focus(&self) @extern("gtk_event_controller_focus_is_focus");


<* Maps to GtkEventControllerKey *>
distinct EventControllerKey = void*;

fn EventController* EventControllerKey.as_EventController(&self) => (EventController*)(self);


<* Maps to forward *>
extern fn bool EventControllerKey.forward(&self, Widget* widget) @extern("gtk_event_controller_key_forward");

<* Maps to get_group *>
extern fn uint EventControllerKey.get_group(&self) @extern("gtk_event_controller_key_get_group");

<* Maps to get_im_context *>
extern fn IMContext* EventControllerKey.get_im_context(&self) @extern("gtk_event_controller_key_get_im_context");

<* Maps to set_im_context *>
extern fn void EventControllerKey.set_im_context(&self, IMContext* im_context) @extern("gtk_event_controller_key_set_im_context");


<* Maps to GtkEventControllerLegacy *>
distinct EventControllerLegacy = void*;

fn EventController* EventControllerLegacy.as_EventController(&self) => (EventController*)(self);



<* Maps to GtkEventControllerMotion *>
distinct EventControllerMotion = void*;

fn EventController* EventControllerMotion.as_EventController(&self) => (EventController*)(self);


<* Maps to contains_pointer *>
extern fn bool EventControllerMotion.contains_pointer(&self) @extern("gtk_event_controller_motion_contains_pointer");

<* Maps to is_pointer *>
extern fn bool EventControllerMotion.is_pointer(&self) @extern("gtk_event_controller_motion_is_pointer");


<* Maps to GtkEventControllerScroll *>
distinct EventControllerScroll = void*;

fn EventController* EventControllerScroll.as_EventController(&self) => (EventController*)(self);


<* Maps to get_flags *>
extern fn EventControllerScrollFlags EventControllerScroll.get_flags(&self) @extern("gtk_event_controller_scroll_get_flags");

<* Maps to get_unit *>
extern fn gdk::ScrollUnit EventControllerScroll.get_unit(&self) @extern("gtk_event_controller_scroll_get_unit");

<* Maps to set_flags *>
extern fn void EventControllerScroll.set_flags(&self, EventControllerScrollFlags flags) @extern("gtk_event_controller_scroll_set_flags");


<* Maps to GtkEveryFilter *>
distinct EveryFilter = void*;

fn MultiFilter* EveryFilter.as_MultiFilter(&self) => (MultiFilter*)(self);



<* Maps to GtkExpander *>
distinct Expander = void*;

fn Widget* Expander.as_Widget(&self) => (Widget*)(self);


<* Maps to get_child *>
extern fn Widget* Expander.get_child(&self) @extern("gtk_expander_get_child");

<* Maps to get_expanded *>
extern fn bool Expander.get_expanded(&self) @extern("gtk_expander_get_expanded");

<* Maps to get_label *>
extern fn ZString Expander.get_label(&self) @extern("gtk_expander_get_label");

<* Maps to get_label_widget *>
extern fn Widget* Expander.get_label_widget(&self) @extern("gtk_expander_get_label_widget");

<* Maps to get_resize_toplevel *>
extern fn bool Expander.get_resize_toplevel(&self) @extern("gtk_expander_get_resize_toplevel");

<* Maps to get_use_markup *>
extern fn bool Expander.get_use_markup(&self) @extern("gtk_expander_get_use_markup");

<* Maps to get_use_underline *>
extern fn bool Expander.get_use_underline(&self) @extern("gtk_expander_get_use_underline");

<* Maps to set_child *>
extern fn void Expander.set_child(&self, Widget* child) @extern("gtk_expander_set_child");

<* Maps to set_expanded *>
extern fn void Expander.set_expanded(&self, bool expanded) @extern("gtk_expander_set_expanded");

<* Maps to set_label *>
extern fn void Expander.set_label(&self, ZString label) @extern("gtk_expander_set_label");

<* Maps to set_label_widget *>
extern fn void Expander.set_label_widget(&self, Widget* label_widget) @extern("gtk_expander_set_label_widget");

<* Maps to set_resize_toplevel *>
extern fn void Expander.set_resize_toplevel(&self, bool resize_toplevel) @extern("gtk_expander_set_resize_toplevel");

<* Maps to set_use_markup *>
extern fn void Expander.set_use_markup(&self, bool use_markup) @extern("gtk_expander_set_use_markup");

<* Maps to set_use_underline *>
extern fn void Expander.set_use_underline(&self, bool use_underline) @extern("gtk_expander_set_use_underline");


<* Maps to GtkExpression *>
distinct Expression = void*;


<* Maps to bind *>
extern fn ExpressionWatch* Expression.bind(&self, gobject::Object* target, ZString property, gobject::Object* this_) @extern("gtk_expression_bind");

<* Maps to evaluate *>
extern fn bool Expression.evaluate(&self, gobject::Object* this_, gobject::Value* value) @extern("gtk_expression_evaluate");

<* Maps to get_value_type *>
extern fn usz Expression.get_value_type(&self) @extern("gtk_expression_get_value_type");

<* Maps to is_static *>
extern fn bool Expression.is_static(&self) @extern("gtk_expression_is_static");

<* Maps to ref *>
extern fn Expression* Expression.ref(&self) @extern("gtk_expression_ref");

<* Maps to unref *>
extern fn void Expression.unref(&self) @extern("gtk_expression_unref");

<* Maps to watch *>
extern fn ExpressionWatch* Expression.watch(&self, gobject::Object* this_, ExpressionNotify notify, void* user_data, glib::DestroyNotify user_destroy) @extern("gtk_expression_watch");


<* Maps to GtkFileChooserDialog *>
distinct FileChooserDialog = void*;

fn Dialog* FileChooserDialog.as_Dialog(&self) => (Dialog*)(self);



<* Maps to GtkFileChooserNative *>
distinct FileChooserNative = void*;

fn NativeDialog* FileChooserNative.as_NativeDialog(&self) => (NativeDialog*)(self);


<* Maps to get_accept_label *>
extern fn ZString FileChooserNative.get_accept_label(&self) @extern("gtk_file_chooser_native_get_accept_label");

<* Maps to get_cancel_label *>
extern fn ZString FileChooserNative.get_cancel_label(&self) @extern("gtk_file_chooser_native_get_cancel_label");

<* Maps to set_accept_label *>
extern fn void FileChooserNative.set_accept_label(&self, ZString accept_label) @extern("gtk_file_chooser_native_set_accept_label");

<* Maps to set_cancel_label *>
extern fn void FileChooserNative.set_cancel_label(&self, ZString cancel_label) @extern("gtk_file_chooser_native_set_cancel_label");


<* Maps to GtkFileChooserWidget *>
distinct FileChooserWidget = void*;

fn Widget* FileChooserWidget.as_Widget(&self) => (Widget*)(self);



<* Maps to GtkFileDialog *>
distinct FileDialog = void*;

fn gobject::Object* FileDialog.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_accept_label *>
extern fn ZString FileDialog.get_accept_label(&self) @extern("gtk_file_dialog_get_accept_label");

<* Maps to get_default_filter *>
extern fn FileFilter* FileDialog.get_default_filter(&self) @extern("gtk_file_dialog_get_default_filter");

<* Maps to get_filters *>
extern fn gio::ListModel* FileDialog.get_filters(&self) @extern("gtk_file_dialog_get_filters");

<* Maps to get_initial_file *>
extern fn gio::File* FileDialog.get_initial_file(&self) @extern("gtk_file_dialog_get_initial_file");

<* Maps to get_initial_folder *>
extern fn gio::File* FileDialog.get_initial_folder(&self) @extern("gtk_file_dialog_get_initial_folder");

<* Maps to get_initial_name *>
extern fn ZString FileDialog.get_initial_name(&self) @extern("gtk_file_dialog_get_initial_name");

<* Maps to get_modal *>
extern fn bool FileDialog.get_modal(&self) @extern("gtk_file_dialog_get_modal");

<* Maps to get_title *>
extern fn ZString FileDialog.get_title(&self) @extern("gtk_file_dialog_get_title");

<* Maps to open *>
extern fn void FileDialog.open(&self, Window* parent, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gtk_file_dialog_open");

<* Maps to open_finish *>
extern fn gio::File* FileDialog.open_finish(&self, gio::AsyncResult* result) @extern("gtk_file_dialog_open_finish");

<* Maps to open_multiple *>
extern fn void FileDialog.open_multiple(&self, Window* parent, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gtk_file_dialog_open_multiple");

<* Maps to open_multiple_finish *>
extern fn gio::ListModel* FileDialog.open_multiple_finish(&self, gio::AsyncResult* result) @extern("gtk_file_dialog_open_multiple_finish");

<* Maps to save *>
extern fn void FileDialog.save(&self, Window* parent, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gtk_file_dialog_save");

<* Maps to save_finish *>
extern fn gio::File* FileDialog.save_finish(&self, gio::AsyncResult* result) @extern("gtk_file_dialog_save_finish");

<* Maps to select_folder *>
extern fn void FileDialog.select_folder(&self, Window* parent, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gtk_file_dialog_select_folder");

<* Maps to select_folder_finish *>
extern fn gio::File* FileDialog.select_folder_finish(&self, gio::AsyncResult* result) @extern("gtk_file_dialog_select_folder_finish");

<* Maps to select_multiple_folders *>
extern fn void FileDialog.select_multiple_folders(&self, Window* parent, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gtk_file_dialog_select_multiple_folders");

<* Maps to select_multiple_folders_finish *>
extern fn gio::ListModel* FileDialog.select_multiple_folders_finish(&self, gio::AsyncResult* result) @extern("gtk_file_dialog_select_multiple_folders_finish");

<* Maps to set_accept_label *>
extern fn void FileDialog.set_accept_label(&self, ZString accept_label) @extern("gtk_file_dialog_set_accept_label");

<* Maps to set_default_filter *>
extern fn void FileDialog.set_default_filter(&self, FileFilter* filter) @extern("gtk_file_dialog_set_default_filter");

<* Maps to set_filters *>
extern fn void FileDialog.set_filters(&self, gio::ListModel* filters) @extern("gtk_file_dialog_set_filters");

<* Maps to set_initial_file *>
extern fn void FileDialog.set_initial_file(&self, gio::File* file) @extern("gtk_file_dialog_set_initial_file");

<* Maps to set_initial_folder *>
extern fn void FileDialog.set_initial_folder(&self, gio::File* folder) @extern("gtk_file_dialog_set_initial_folder");

<* Maps to set_initial_name *>
extern fn void FileDialog.set_initial_name(&self, ZString name) @extern("gtk_file_dialog_set_initial_name");

<* Maps to set_modal *>
extern fn void FileDialog.set_modal(&self, bool modal) @extern("gtk_file_dialog_set_modal");

<* Maps to set_title *>
extern fn void FileDialog.set_title(&self, ZString title) @extern("gtk_file_dialog_set_title");


<* Maps to GtkFileFilter *>
distinct FileFilter = void*;

fn Filter* FileFilter.as_Filter(&self) => (Filter*)(self);


<* Maps to add_mime_type *>
extern fn void FileFilter.add_mime_type(&self, ZString mime_type) @extern("gtk_file_filter_add_mime_type");

<* Maps to add_pattern *>
extern fn void FileFilter.add_pattern(&self, ZString pattern) @extern("gtk_file_filter_add_pattern");

<* Maps to add_pixbuf_formats *>
extern fn void FileFilter.add_pixbuf_formats(&self) @extern("gtk_file_filter_add_pixbuf_formats");

<* Maps to add_suffix *>
extern fn void FileFilter.add_suffix(&self, ZString suffix) @extern("gtk_file_filter_add_suffix");

<* Maps to get_attributes *>
extern fn ZString FileFilter.get_attributes(&self) @extern("gtk_file_filter_get_attributes");

<* Maps to get_name *>
extern fn ZString FileFilter.get_name(&self) @extern("gtk_file_filter_get_name");

<* Maps to set_name *>
extern fn void FileFilter.set_name(&self, ZString name) @extern("gtk_file_filter_set_name");

<* Maps to to_gvariant *>
extern fn glib::Variant* FileFilter.to_gvariant(&self) @extern("gtk_file_filter_to_gvariant");


<* Maps to GtkFileLauncher *>
distinct FileLauncher = void*;

fn gobject::Object* FileLauncher.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_always_ask *>
extern fn bool FileLauncher.get_always_ask(&self) @extern("gtk_file_launcher_get_always_ask");

<* Maps to get_file *>
extern fn gio::File* FileLauncher.get_file(&self) @extern("gtk_file_launcher_get_file");

<* Maps to get_writable *>
extern fn bool FileLauncher.get_writable(&self) @extern("gtk_file_launcher_get_writable");

<* Maps to launch *>
extern fn void FileLauncher.launch(&self, Window* parent, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gtk_file_launcher_launch");

<* Maps to launch_finish *>
extern fn bool FileLauncher.launch_finish(&self, gio::AsyncResult* result) @extern("gtk_file_launcher_launch_finish");

<* Maps to open_containing_folder *>
extern fn void FileLauncher.open_containing_folder(&self, Window* parent, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gtk_file_launcher_open_containing_folder");

<* Maps to open_containing_folder_finish *>
extern fn bool FileLauncher.open_containing_folder_finish(&self, gio::AsyncResult* result) @extern("gtk_file_launcher_open_containing_folder_finish");

<* Maps to set_always_ask *>
extern fn void FileLauncher.set_always_ask(&self, bool always_ask) @extern("gtk_file_launcher_set_always_ask");

<* Maps to set_file *>
extern fn void FileLauncher.set_file(&self, gio::File* file) @extern("gtk_file_launcher_set_file");

<* Maps to set_writable *>
extern fn void FileLauncher.set_writable(&self, bool writable) @extern("gtk_file_launcher_set_writable");


<* Maps to GtkFilter *>
distinct Filter = void*;

fn gobject::Object* Filter.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to changed *>
extern fn void Filter.changed(&self, FilterChange change) @extern("gtk_filter_changed");

<* Maps to get_strictness *>
extern fn FilterMatch Filter.get_strictness(&self) @extern("gtk_filter_get_strictness");

<* Maps to match *>
extern fn bool Filter.match(&self, gobject::Object* item) @extern("gtk_filter_match");


<* Maps to GtkFilterListModel *>
distinct FilterListModel = void*;

fn gobject::Object* FilterListModel.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_filter *>
extern fn Filter* FilterListModel.get_filter(&self) @extern("gtk_filter_list_model_get_filter");

<* Maps to get_incremental *>
extern fn bool FilterListModel.get_incremental(&self) @extern("gtk_filter_list_model_get_incremental");

<* Maps to get_model *>
extern fn gio::ListModel* FilterListModel.get_model(&self) @extern("gtk_filter_list_model_get_model");

<* Maps to get_pending *>
extern fn uint FilterListModel.get_pending(&self) @extern("gtk_filter_list_model_get_pending");

<* Maps to set_filter *>
extern fn void FilterListModel.set_filter(&self, Filter* filter) @extern("gtk_filter_list_model_set_filter");

<* Maps to set_incremental *>
extern fn void FilterListModel.set_incremental(&self, bool incremental) @extern("gtk_filter_list_model_set_incremental");

<* Maps to set_model *>
extern fn void FilterListModel.set_model(&self, gio::ListModel* model) @extern("gtk_filter_list_model_set_model");


<* Maps to GtkFixed *>
distinct Fixed = void*;

fn Widget* Fixed.as_Widget(&self) => (Widget*)(self);


<* Maps to get_child_position *>
extern fn void Fixed.get_child_position(&self, Widget* widget, double* x, double* y) @extern("gtk_fixed_get_child_position");

<* Maps to get_child_transform *>
extern fn gsk::Transform* Fixed.get_child_transform(&self, Widget* widget) @extern("gtk_fixed_get_child_transform");

<* Maps to move *>
extern fn void Fixed.move(&self, Widget* widget, double x, double y) @extern("gtk_fixed_move");

<* Maps to put *>
extern fn void Fixed.put(&self, Widget* widget, double x, double y) @extern("gtk_fixed_put");

<* Maps to remove *>
extern fn void Fixed.remove(&self, Widget* widget) @extern("gtk_fixed_remove");

<* Maps to set_child_transform *>
extern fn void Fixed.set_child_transform(&self, Widget* widget, gsk::Transform* transform) @extern("gtk_fixed_set_child_transform");


<* Maps to GtkFixedLayout *>
distinct FixedLayout = void*;

fn LayoutManager* FixedLayout.as_LayoutManager(&self) => (LayoutManager*)(self);



<* Maps to GtkFixedLayoutChild *>
distinct FixedLayoutChild = void*;

fn LayoutChild* FixedLayoutChild.as_LayoutChild(&self) => (LayoutChild*)(self);


<* Maps to get_transform *>
extern fn gsk::Transform* FixedLayoutChild.get_transform(&self) @extern("gtk_fixed_layout_child_get_transform");

<* Maps to set_transform *>
extern fn void FixedLayoutChild.set_transform(&self, gsk::Transform* transform) @extern("gtk_fixed_layout_child_set_transform");


<* Maps to GtkFlattenListModel *>
distinct FlattenListModel = void*;

fn gobject::Object* FlattenListModel.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_model *>
extern fn gio::ListModel* FlattenListModel.get_model(&self) @extern("gtk_flatten_list_model_get_model");

<* Maps to get_model_for_item *>
extern fn gio::ListModel* FlattenListModel.get_model_for_item(&self, uint position) @extern("gtk_flatten_list_model_get_model_for_item");

<* Maps to set_model *>
extern fn void FlattenListModel.set_model(&self, gio::ListModel* model) @extern("gtk_flatten_list_model_set_model");


<* Maps to GtkFlowBox *>
distinct FlowBox = void*;

fn Widget* FlowBox.as_Widget(&self) => (Widget*)(self);


<* Maps to append *>
extern fn void FlowBox.append(&self, Widget* child) @extern("gtk_flow_box_append");

<* Maps to bind_model *>
extern fn void FlowBox.bind_model(&self, gio::ListModel* model, FlowBoxCreateWidgetFunc create_widget_func, void* user_data, glib::DestroyNotify user_data_free_func) @extern("gtk_flow_box_bind_model");

<* Maps to get_activate_on_single_click *>
extern fn bool FlowBox.get_activate_on_single_click(&self) @extern("gtk_flow_box_get_activate_on_single_click");

<* Maps to get_child_at_index *>
extern fn FlowBoxChild* FlowBox.get_child_at_index(&self, int idx) @extern("gtk_flow_box_get_child_at_index");

<* Maps to get_child_at_pos *>
extern fn FlowBoxChild* FlowBox.get_child_at_pos(&self, int x, int y) @extern("gtk_flow_box_get_child_at_pos");

<* Maps to get_column_spacing *>
extern fn uint FlowBox.get_column_spacing(&self) @extern("gtk_flow_box_get_column_spacing");

<* Maps to get_homogeneous *>
extern fn bool FlowBox.get_homogeneous(&self) @extern("gtk_flow_box_get_homogeneous");

<* Maps to get_max_children_per_line *>
extern fn uint FlowBox.get_max_children_per_line(&self) @extern("gtk_flow_box_get_max_children_per_line");

<* Maps to get_min_children_per_line *>
extern fn uint FlowBox.get_min_children_per_line(&self) @extern("gtk_flow_box_get_min_children_per_line");

<* Maps to get_row_spacing *>
extern fn uint FlowBox.get_row_spacing(&self) @extern("gtk_flow_box_get_row_spacing");

<* Maps to get_selected_children *>
extern fn glib::List* FlowBox.get_selected_children(&self) @extern("gtk_flow_box_get_selected_children");

<* Maps to get_selection_mode *>
extern fn SelectionMode FlowBox.get_selection_mode(&self) @extern("gtk_flow_box_get_selection_mode");

<* Maps to insert *>
extern fn void FlowBox.insert(&self, Widget* widget, int position) @extern("gtk_flow_box_insert");

<* Maps to invalidate_filter *>
extern fn void FlowBox.invalidate_filter(&self) @extern("gtk_flow_box_invalidate_filter");

<* Maps to invalidate_sort *>
extern fn void FlowBox.invalidate_sort(&self) @extern("gtk_flow_box_invalidate_sort");

<* Maps to prepend *>
extern fn void FlowBox.prepend(&self, Widget* child) @extern("gtk_flow_box_prepend");

<* Maps to remove *>
extern fn void FlowBox.remove(&self, Widget* widget) @extern("gtk_flow_box_remove");

<* Maps to remove_all *>
extern fn void FlowBox.remove_all(&self) @extern("gtk_flow_box_remove_all");

<* Maps to select_all *>
extern fn void FlowBox.select_all(&self) @extern("gtk_flow_box_select_all");

<* Maps to select_child *>
extern fn void FlowBox.select_child(&self, FlowBoxChild* child) @extern("gtk_flow_box_select_child");

<* Maps to selected_foreach *>
extern fn void FlowBox.selected_foreach(&self, FlowBoxForeachFunc func, void* data) @extern("gtk_flow_box_selected_foreach");

<* Maps to set_activate_on_single_click *>
extern fn void FlowBox.set_activate_on_single_click(&self, bool single) @extern("gtk_flow_box_set_activate_on_single_click");

<* Maps to set_column_spacing *>
extern fn void FlowBox.set_column_spacing(&self, uint spacing) @extern("gtk_flow_box_set_column_spacing");

<* Maps to set_filter_func *>
extern fn void FlowBox.set_filter_func(&self, FlowBoxFilterFunc filter_func, void* user_data, glib::DestroyNotify destroy) @extern("gtk_flow_box_set_filter_func");

<* Maps to set_hadjustment *>
extern fn void FlowBox.set_hadjustment(&self, Adjustment* adjustment) @extern("gtk_flow_box_set_hadjustment");

<* Maps to set_homogeneous *>
extern fn void FlowBox.set_homogeneous(&self, bool homogeneous) @extern("gtk_flow_box_set_homogeneous");

<* Maps to set_max_children_per_line *>
extern fn void FlowBox.set_max_children_per_line(&self, uint n_children) @extern("gtk_flow_box_set_max_children_per_line");

<* Maps to set_min_children_per_line *>
extern fn void FlowBox.set_min_children_per_line(&self, uint n_children) @extern("gtk_flow_box_set_min_children_per_line");

<* Maps to set_row_spacing *>
extern fn void FlowBox.set_row_spacing(&self, uint spacing) @extern("gtk_flow_box_set_row_spacing");

<* Maps to set_selection_mode *>
extern fn void FlowBox.set_selection_mode(&self, SelectionMode mode) @extern("gtk_flow_box_set_selection_mode");

<* Maps to set_sort_func *>
extern fn void FlowBox.set_sort_func(&self, FlowBoxSortFunc sort_func, void* user_data, glib::DestroyNotify destroy) @extern("gtk_flow_box_set_sort_func");

<* Maps to set_vadjustment *>
extern fn void FlowBox.set_vadjustment(&self, Adjustment* adjustment) @extern("gtk_flow_box_set_vadjustment");

<* Maps to unselect_all *>
extern fn void FlowBox.unselect_all(&self) @extern("gtk_flow_box_unselect_all");

<* Maps to unselect_child *>
extern fn void FlowBox.unselect_child(&self, FlowBoxChild* child) @extern("gtk_flow_box_unselect_child");


<* Maps to GtkFlowBoxChild *>
distinct FlowBoxChild = void*;

fn Widget* FlowBoxChild.as_Widget(&self) => (Widget*)(self);


<* Maps to changed *>
extern fn void FlowBoxChild.changed(&self) @extern("gtk_flow_box_child_changed");

<* Maps to get_child *>
extern fn Widget* FlowBoxChild.get_child(&self) @extern("gtk_flow_box_child_get_child");

<* Maps to get_index *>
extern fn int FlowBoxChild.get_index(&self) @extern("gtk_flow_box_child_get_index");

<* Maps to is_selected *>
extern fn bool FlowBoxChild.is_selected(&self) @extern("gtk_flow_box_child_is_selected");

<* Maps to set_child *>
extern fn void FlowBoxChild.set_child(&self, Widget* child) @extern("gtk_flow_box_child_set_child");


<* Maps to GtkFontButton *>
distinct FontButton = void*;

fn Widget* FontButton.as_Widget(&self) => (Widget*)(self);


<* Maps to get_modal *>
extern fn bool FontButton.get_modal(&self) @extern("gtk_font_button_get_modal");

<* Maps to get_title *>
extern fn ZString FontButton.get_title(&self) @extern("gtk_font_button_get_title");

<* Maps to get_use_font *>
extern fn bool FontButton.get_use_font(&self) @extern("gtk_font_button_get_use_font");

<* Maps to get_use_size *>
extern fn bool FontButton.get_use_size(&self) @extern("gtk_font_button_get_use_size");

<* Maps to set_modal *>
extern fn void FontButton.set_modal(&self, bool modal) @extern("gtk_font_button_set_modal");

<* Maps to set_title *>
extern fn void FontButton.set_title(&self, ZString title) @extern("gtk_font_button_set_title");

<* Maps to set_use_font *>
extern fn void FontButton.set_use_font(&self, bool use_font) @extern("gtk_font_button_set_use_font");

<* Maps to set_use_size *>
extern fn void FontButton.set_use_size(&self, bool use_size) @extern("gtk_font_button_set_use_size");


<* Maps to GtkFontChooserDialog *>
distinct FontChooserDialog = void*;

fn Dialog* FontChooserDialog.as_Dialog(&self) => (Dialog*)(self);



<* Maps to GtkFontChooserWidget *>
distinct FontChooserWidget = void*;

fn Widget* FontChooserWidget.as_Widget(&self) => (Widget*)(self);



<* Maps to GtkFontDialog *>
distinct FontDialog = void*;

fn gobject::Object* FontDialog.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to choose_face *>
extern fn void FontDialog.choose_face(&self, Window* parent, pango::FontFace* initial_value, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gtk_font_dialog_choose_face");

<* Maps to choose_face_finish *>
extern fn pango::FontFace* FontDialog.choose_face_finish(&self, gio::AsyncResult* result) @extern("gtk_font_dialog_choose_face_finish");

<* Maps to choose_family *>
extern fn void FontDialog.choose_family(&self, Window* parent, pango::FontFamily* initial_value, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gtk_font_dialog_choose_family");

<* Maps to choose_family_finish *>
extern fn pango::FontFamily* FontDialog.choose_family_finish(&self, gio::AsyncResult* result) @extern("gtk_font_dialog_choose_family_finish");

<* Maps to choose_font *>
extern fn void FontDialog.choose_font(&self, Window* parent, pango::FontDescription* initial_value, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gtk_font_dialog_choose_font");

<* Maps to choose_font_and_features *>
extern fn void FontDialog.choose_font_and_features(&self, Window* parent, pango::FontDescription* initial_value, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gtk_font_dialog_choose_font_and_features");

<* Maps to choose_font_and_features_finish *>
extern fn bool FontDialog.choose_font_and_features_finish(&self, gio::AsyncResult* result, pango::FontDescription* font_desc, ZString* font_features, pango::Language* language) @extern("gtk_font_dialog_choose_font_and_features_finish");

<* Maps to choose_font_finish *>
extern fn pango::FontDescription* FontDialog.choose_font_finish(&self, gio::AsyncResult* result) @extern("gtk_font_dialog_choose_font_finish");

<* Maps to get_filter *>
extern fn Filter* FontDialog.get_filter(&self) @extern("gtk_font_dialog_get_filter");

<* Maps to get_font_map *>
extern fn pango::FontMap* FontDialog.get_font_map(&self) @extern("gtk_font_dialog_get_font_map");

<* Maps to get_language *>
extern fn pango::Language* FontDialog.get_language(&self) @extern("gtk_font_dialog_get_language");

<* Maps to get_modal *>
extern fn bool FontDialog.get_modal(&self) @extern("gtk_font_dialog_get_modal");

<* Maps to get_title *>
extern fn ZString FontDialog.get_title(&self) @extern("gtk_font_dialog_get_title");

<* Maps to set_filter *>
extern fn void FontDialog.set_filter(&self, Filter* filter) @extern("gtk_font_dialog_set_filter");

<* Maps to set_font_map *>
extern fn void FontDialog.set_font_map(&self, pango::FontMap* fontmap) @extern("gtk_font_dialog_set_font_map");

<* Maps to set_language *>
extern fn void FontDialog.set_language(&self, pango::Language* language) @extern("gtk_font_dialog_set_language");

<* Maps to set_modal *>
extern fn void FontDialog.set_modal(&self, bool modal) @extern("gtk_font_dialog_set_modal");

<* Maps to set_title *>
extern fn void FontDialog.set_title(&self, ZString title) @extern("gtk_font_dialog_set_title");


<* Maps to GtkFontDialogButton *>
distinct FontDialogButton = void*;

fn Widget* FontDialogButton.as_Widget(&self) => (Widget*)(self);


<* Maps to get_dialog *>
extern fn FontDialog* FontDialogButton.get_dialog(&self) @extern("gtk_font_dialog_button_get_dialog");

<* Maps to get_font_desc *>
extern fn pango::FontDescription* FontDialogButton.get_font_desc(&self) @extern("gtk_font_dialog_button_get_font_desc");

<* Maps to get_font_features *>
extern fn ZString FontDialogButton.get_font_features(&self) @extern("gtk_font_dialog_button_get_font_features");

<* Maps to get_language *>
extern fn pango::Language* FontDialogButton.get_language(&self) @extern("gtk_font_dialog_button_get_language");

<* Maps to get_level *>
extern fn FontLevel FontDialogButton.get_level(&self) @extern("gtk_font_dialog_button_get_level");

<* Maps to get_use_font *>
extern fn bool FontDialogButton.get_use_font(&self) @extern("gtk_font_dialog_button_get_use_font");

<* Maps to get_use_size *>
extern fn bool FontDialogButton.get_use_size(&self) @extern("gtk_font_dialog_button_get_use_size");

<* Maps to set_dialog *>
extern fn void FontDialogButton.set_dialog(&self, FontDialog* dialog) @extern("gtk_font_dialog_button_set_dialog");

<* Maps to set_font_desc *>
extern fn void FontDialogButton.set_font_desc(&self, pango::FontDescription* font_desc) @extern("gtk_font_dialog_button_set_font_desc");

<* Maps to set_font_features *>
extern fn void FontDialogButton.set_font_features(&self, ZString font_features) @extern("gtk_font_dialog_button_set_font_features");

<* Maps to set_language *>
extern fn void FontDialogButton.set_language(&self, pango::Language* language) @extern("gtk_font_dialog_button_set_language");

<* Maps to set_level *>
extern fn void FontDialogButton.set_level(&self, FontLevel level) @extern("gtk_font_dialog_button_set_level");

<* Maps to set_use_font *>
extern fn void FontDialogButton.set_use_font(&self, bool use_font) @extern("gtk_font_dialog_button_set_use_font");

<* Maps to set_use_size *>
extern fn void FontDialogButton.set_use_size(&self, bool use_size) @extern("gtk_font_dialog_button_set_use_size");


<* Maps to GtkFrame *>
distinct Frame = void*;

fn Widget* Frame.as_Widget(&self) => (Widget*)(self);


<* Maps to get_child *>
extern fn Widget* Frame.get_child(&self) @extern("gtk_frame_get_child");

<* Maps to get_label *>
extern fn ZString Frame.get_label(&self) @extern("gtk_frame_get_label");

<* Maps to get_label_align *>
extern fn float Frame.get_label_align(&self) @extern("gtk_frame_get_label_align");

<* Maps to get_label_widget *>
extern fn Widget* Frame.get_label_widget(&self) @extern("gtk_frame_get_label_widget");

<* Maps to set_child *>
extern fn void Frame.set_child(&self, Widget* child) @extern("gtk_frame_set_child");

<* Maps to set_label *>
extern fn void Frame.set_label(&self, ZString label) @extern("gtk_frame_set_label");

<* Maps to set_label_align *>
extern fn void Frame.set_label_align(&self, float xalign) @extern("gtk_frame_set_label_align");

<* Maps to set_label_widget *>
extern fn void Frame.set_label_widget(&self, Widget* label_widget) @extern("gtk_frame_set_label_widget");


<* Maps to GtkGLArea *>
distinct GLArea = void*;

fn Widget* GLArea.as_Widget(&self) => (Widget*)(self);


<* Maps to attach_buffers *>
extern fn void GLArea.attach_buffers(&self) @extern("gtk_gl_area_attach_buffers");

<* Maps to get_allowed_apis *>
extern fn gdk::Glapi GLArea.get_allowed_apis(&self) @extern("gtk_gl_area_get_allowed_apis");

<* Maps to get_api *>
extern fn gdk::Glapi GLArea.get_api(&self) @extern("gtk_gl_area_get_api");

<* Maps to get_auto_render *>
extern fn bool GLArea.get_auto_render(&self) @extern("gtk_gl_area_get_auto_render");

<* Maps to get_context *>
extern fn gdk::GLContext* GLArea.get_context(&self) @extern("gtk_gl_area_get_context");

<* Maps to get_error *>
extern fn glib::Error* GLArea.get_error(&self) @extern("gtk_gl_area_get_error");

<* Maps to get_has_depth_buffer *>
extern fn bool GLArea.get_has_depth_buffer(&self) @extern("gtk_gl_area_get_has_depth_buffer");

<* Maps to get_has_stencil_buffer *>
extern fn bool GLArea.get_has_stencil_buffer(&self) @extern("gtk_gl_area_get_has_stencil_buffer");

<* Maps to get_required_version *>
extern fn void GLArea.get_required_version(&self, int* major, int* minor) @extern("gtk_gl_area_get_required_version");

<* Maps to get_use_es *>
extern fn bool GLArea.get_use_es(&self) @extern("gtk_gl_area_get_use_es");

<* Maps to make_current *>
extern fn void GLArea.make_current(&self) @extern("gtk_gl_area_make_current");

<* Maps to queue_render *>
extern fn void GLArea.queue_render(&self) @extern("gtk_gl_area_queue_render");

<* Maps to set_allowed_apis *>
extern fn void GLArea.set_allowed_apis(&self, gdk::Glapi apis) @extern("gtk_gl_area_set_allowed_apis");

<* Maps to set_auto_render *>
extern fn void GLArea.set_auto_render(&self, bool auto_render) @extern("gtk_gl_area_set_auto_render");

<* Maps to set_error *>
extern fn void GLArea.set_error(&self, glib::Error* error) @extern("gtk_gl_area_set_error");

<* Maps to set_has_depth_buffer *>
extern fn void GLArea.set_has_depth_buffer(&self, bool has_depth_buffer) @extern("gtk_gl_area_set_has_depth_buffer");

<* Maps to set_has_stencil_buffer *>
extern fn void GLArea.set_has_stencil_buffer(&self, bool has_stencil_buffer) @extern("gtk_gl_area_set_has_stencil_buffer");

<* Maps to set_required_version *>
extern fn void GLArea.set_required_version(&self, int major, int minor) @extern("gtk_gl_area_set_required_version");

<* Maps to set_use_es *>
extern fn void GLArea.set_use_es(&self, bool use_es) @extern("gtk_gl_area_set_use_es");


<* Maps to GtkGesture *>
distinct Gesture = void*;

fn EventController* Gesture.as_EventController(&self) => (EventController*)(self);


<* Maps to get_bounding_box *>
extern fn bool Gesture.get_bounding_box(&self, gdk::Rectangle* rect) @extern("gtk_gesture_get_bounding_box");

<* Maps to get_bounding_box_center *>
extern fn bool Gesture.get_bounding_box_center(&self, double* x, double* y) @extern("gtk_gesture_get_bounding_box_center");

<* Maps to get_device *>
extern fn gdk::Device* Gesture.get_device(&self) @extern("gtk_gesture_get_device");

<* Maps to get_group *>
extern fn glib::List* Gesture.get_group(&self) @extern("gtk_gesture_get_group");

<* Maps to get_last_event *>
extern fn gdk::Event* Gesture.get_last_event(&self, gdk::EventSequence* sequence) @extern("gtk_gesture_get_last_event");

<* Maps to get_last_updated_sequence *>
extern fn gdk::EventSequence* Gesture.get_last_updated_sequence(&self) @extern("gtk_gesture_get_last_updated_sequence");

<* Maps to get_point *>
extern fn bool Gesture.get_point(&self, gdk::EventSequence* sequence, double* x, double* y) @extern("gtk_gesture_get_point");

<* Maps to get_sequence_state *>
extern fn EventSequenceState Gesture.get_sequence_state(&self, gdk::EventSequence* sequence) @extern("gtk_gesture_get_sequence_state");

<* Maps to get_sequences *>
extern fn glib::List* Gesture.get_sequences(&self) @extern("gtk_gesture_get_sequences");

<* Maps to group *>
extern fn void Gesture.group(&self, Gesture* gesture) @extern("gtk_gesture_group");

<* Maps to handles_sequence *>
extern fn bool Gesture.handles_sequence(&self, gdk::EventSequence* sequence) @extern("gtk_gesture_handles_sequence");

<* Maps to is_active *>
extern fn bool Gesture.is_active(&self) @extern("gtk_gesture_is_active");

<* Maps to is_grouped_with *>
extern fn bool Gesture.is_grouped_with(&self, Gesture* other) @extern("gtk_gesture_is_grouped_with");

<* Maps to is_recognized *>
extern fn bool Gesture.is_recognized(&self) @extern("gtk_gesture_is_recognized");

<* Maps to set_sequence_state *>
extern fn bool Gesture.set_sequence_state(&self, gdk::EventSequence* sequence, EventSequenceState state) @extern("gtk_gesture_set_sequence_state");

<* Maps to set_state *>
extern fn bool Gesture.set_state(&self, EventSequenceState state) @extern("gtk_gesture_set_state");

<* Maps to ungroup *>
extern fn void Gesture.ungroup(&self) @extern("gtk_gesture_ungroup");


<* Maps to GtkGestureClick *>
distinct GestureClick = void*;

fn GestureSingle* GestureClick.as_GestureSingle(&self) => (GestureSingle*)(self);



<* Maps to GtkGestureDrag *>
distinct GestureDrag = void*;

fn GestureSingle* GestureDrag.as_GestureSingle(&self) => (GestureSingle*)(self);


<* Maps to get_offset *>
extern fn bool GestureDrag.get_offset(&self, double* x, double* y) @extern("gtk_gesture_drag_get_offset");

<* Maps to get_start_point *>
extern fn bool GestureDrag.get_start_point(&self, double* x, double* y) @extern("gtk_gesture_drag_get_start_point");


<* Maps to GtkGestureLongPress *>
distinct GestureLongPress = void*;

fn GestureSingle* GestureLongPress.as_GestureSingle(&self) => (GestureSingle*)(self);


<* Maps to get_delay_factor *>
extern fn double GestureLongPress.get_delay_factor(&self) @extern("gtk_gesture_long_press_get_delay_factor");

<* Maps to set_delay_factor *>
extern fn void GestureLongPress.set_delay_factor(&self, double delay_factor) @extern("gtk_gesture_long_press_set_delay_factor");


<* Maps to GtkGesturePan *>
distinct GesturePan = void*;

fn GestureDrag* GesturePan.as_GestureDrag(&self) => (GestureDrag*)(self);


<* Maps to get_orientation *>
extern fn Orientation GesturePan.get_orientation(&self) @extern("gtk_gesture_pan_get_orientation");

<* Maps to set_orientation *>
extern fn void GesturePan.set_orientation(&self, Orientation orientation) @extern("gtk_gesture_pan_set_orientation");


<* Maps to GtkGestureRotate *>
distinct GestureRotate = void*;

fn Gesture* GestureRotate.as_Gesture(&self) => (Gesture*)(self);


<* Maps to get_angle_delta *>
extern fn double GestureRotate.get_angle_delta(&self) @extern("gtk_gesture_rotate_get_angle_delta");


<* Maps to GtkGestureSingle *>
distinct GestureSingle = void*;

fn Gesture* GestureSingle.as_Gesture(&self) => (Gesture*)(self);


<* Maps to get_button *>
extern fn uint GestureSingle.get_button(&self) @extern("gtk_gesture_single_get_button");

<* Maps to get_current_button *>
extern fn uint GestureSingle.get_current_button(&self) @extern("gtk_gesture_single_get_current_button");

<* Maps to get_current_sequence *>
extern fn gdk::EventSequence* GestureSingle.get_current_sequence(&self) @extern("gtk_gesture_single_get_current_sequence");

<* Maps to get_exclusive *>
extern fn bool GestureSingle.get_exclusive(&self) @extern("gtk_gesture_single_get_exclusive");

<* Maps to get_touch_only *>
extern fn bool GestureSingle.get_touch_only(&self) @extern("gtk_gesture_single_get_touch_only");

<* Maps to set_button *>
extern fn void GestureSingle.set_button(&self, uint button) @extern("gtk_gesture_single_set_button");

<* Maps to set_exclusive *>
extern fn void GestureSingle.set_exclusive(&self, bool exclusive) @extern("gtk_gesture_single_set_exclusive");

<* Maps to set_touch_only *>
extern fn void GestureSingle.set_touch_only(&self, bool touch_only) @extern("gtk_gesture_single_set_touch_only");


<* Maps to GtkGestureStylus *>
distinct GestureStylus = void*;

fn GestureSingle* GestureStylus.as_GestureSingle(&self) => (GestureSingle*)(self);


<* Maps to get_axes *>
extern fn bool GestureStylus.get_axes(&self, gdk::AxisUse axes, double* values) @extern("gtk_gesture_stylus_get_axes");

<* Maps to get_axis *>
extern fn bool GestureStylus.get_axis(&self, gdk::AxisUse axis, double* value) @extern("gtk_gesture_stylus_get_axis");

<* Maps to get_backlog *>
extern fn bool GestureStylus.get_backlog(&self, gdk::TimeCoord* backlog, uint* n_elems) @extern("gtk_gesture_stylus_get_backlog");

<* Maps to get_device_tool *>
extern fn gdk::DeviceTool* GestureStylus.get_device_tool(&self) @extern("gtk_gesture_stylus_get_device_tool");

<* Maps to get_stylus_only *>
extern fn bool GestureStylus.get_stylus_only(&self) @extern("gtk_gesture_stylus_get_stylus_only");

<* Maps to set_stylus_only *>
extern fn void GestureStylus.set_stylus_only(&self, bool stylus_only) @extern("gtk_gesture_stylus_set_stylus_only");


<* Maps to GtkGestureSwipe *>
distinct GestureSwipe = void*;

fn GestureSingle* GestureSwipe.as_GestureSingle(&self) => (GestureSingle*)(self);


<* Maps to get_velocity *>
extern fn bool GestureSwipe.get_velocity(&self, double* velocity_x, double* velocity_y) @extern("gtk_gesture_swipe_get_velocity");


<* Maps to GtkGestureZoom *>
distinct GestureZoom = void*;

fn Gesture* GestureZoom.as_Gesture(&self) => (Gesture*)(self);


<* Maps to get_scale_delta *>
extern fn double GestureZoom.get_scale_delta(&self) @extern("gtk_gesture_zoom_get_scale_delta");


<* Maps to GtkGraphicsOffload *>
distinct GraphicsOffload = void*;

fn Widget* GraphicsOffload.as_Widget(&self) => (Widget*)(self);


<* Maps to get_black_background *>
extern fn bool GraphicsOffload.get_black_background(&self) @extern("gtk_graphics_offload_get_black_background");

<* Maps to get_child *>
extern fn Widget* GraphicsOffload.get_child(&self) @extern("gtk_graphics_offload_get_child");

<* Maps to get_enabled *>
extern fn GraphicsOffloadEnabled GraphicsOffload.get_enabled(&self) @extern("gtk_graphics_offload_get_enabled");

<* Maps to set_black_background *>
extern fn void GraphicsOffload.set_black_background(&self, bool value) @extern("gtk_graphics_offload_set_black_background");

<* Maps to set_child *>
extern fn void GraphicsOffload.set_child(&self, Widget* child) @extern("gtk_graphics_offload_set_child");

<* Maps to set_enabled *>
extern fn void GraphicsOffload.set_enabled(&self, GraphicsOffloadEnabled enabled) @extern("gtk_graphics_offload_set_enabled");


<* Maps to GtkGrid *>
distinct Grid = void*;

fn Widget* Grid.as_Widget(&self) => (Widget*)(self);


<* Maps to attach *>
extern fn void Grid.attach(&self, Widget* child, int column, int row, int width, int height) @extern("gtk_grid_attach");

<* Maps to attach_next_to *>
extern fn void Grid.attach_next_to(&self, Widget* child, Widget* sibling, PositionType side, int width, int height) @extern("gtk_grid_attach_next_to");

<* Maps to get_baseline_row *>
extern fn int Grid.get_baseline_row(&self) @extern("gtk_grid_get_baseline_row");

<* Maps to get_child_at *>
extern fn Widget* Grid.get_child_at(&self, int column, int row) @extern("gtk_grid_get_child_at");

<* Maps to get_column_homogeneous *>
extern fn bool Grid.get_column_homogeneous(&self) @extern("gtk_grid_get_column_homogeneous");

<* Maps to get_column_spacing *>
extern fn uint Grid.get_column_spacing(&self) @extern("gtk_grid_get_column_spacing");

<* Maps to get_row_baseline_position *>
extern fn BaselinePosition Grid.get_row_baseline_position(&self, int row) @extern("gtk_grid_get_row_baseline_position");

<* Maps to get_row_homogeneous *>
extern fn bool Grid.get_row_homogeneous(&self) @extern("gtk_grid_get_row_homogeneous");

<* Maps to get_row_spacing *>
extern fn uint Grid.get_row_spacing(&self) @extern("gtk_grid_get_row_spacing");

<* Maps to insert_column *>
extern fn void Grid.insert_column(&self, int position) @extern("gtk_grid_insert_column");

<* Maps to insert_next_to *>
extern fn void Grid.insert_next_to(&self, Widget* sibling, PositionType side) @extern("gtk_grid_insert_next_to");

<* Maps to insert_row *>
extern fn void Grid.insert_row(&self, int position) @extern("gtk_grid_insert_row");

<* Maps to query_child *>
extern fn void Grid.query_child(&self, Widget* child, int* column, int* row, int* width, int* height) @extern("gtk_grid_query_child");

<* Maps to remove *>
extern fn void Grid.remove(&self, Widget* child) @extern("gtk_grid_remove");

<* Maps to remove_column *>
extern fn void Grid.remove_column(&self, int position) @extern("gtk_grid_remove_column");

<* Maps to remove_row *>
extern fn void Grid.remove_row(&self, int position) @extern("gtk_grid_remove_row");

<* Maps to set_baseline_row *>
extern fn void Grid.set_baseline_row(&self, int row) @extern("gtk_grid_set_baseline_row");

<* Maps to set_column_homogeneous *>
extern fn void Grid.set_column_homogeneous(&self, bool homogeneous) @extern("gtk_grid_set_column_homogeneous");

<* Maps to set_column_spacing *>
extern fn void Grid.set_column_spacing(&self, uint spacing) @extern("gtk_grid_set_column_spacing");

<* Maps to set_row_baseline_position *>
extern fn void Grid.set_row_baseline_position(&self, int row, BaselinePosition pos) @extern("gtk_grid_set_row_baseline_position");

<* Maps to set_row_homogeneous *>
extern fn void Grid.set_row_homogeneous(&self, bool homogeneous) @extern("gtk_grid_set_row_homogeneous");

<* Maps to set_row_spacing *>
extern fn void Grid.set_row_spacing(&self, uint spacing) @extern("gtk_grid_set_row_spacing");


<* Maps to GtkGridLayout *>
distinct GridLayout = void*;

fn LayoutManager* GridLayout.as_LayoutManager(&self) => (LayoutManager*)(self);


<* Maps to get_baseline_row *>
extern fn int GridLayout.get_baseline_row(&self) @extern("gtk_grid_layout_get_baseline_row");

<* Maps to get_column_homogeneous *>
extern fn bool GridLayout.get_column_homogeneous(&self) @extern("gtk_grid_layout_get_column_homogeneous");

<* Maps to get_column_spacing *>
extern fn uint GridLayout.get_column_spacing(&self) @extern("gtk_grid_layout_get_column_spacing");

<* Maps to get_row_baseline_position *>
extern fn BaselinePosition GridLayout.get_row_baseline_position(&self, int row) @extern("gtk_grid_layout_get_row_baseline_position");

<* Maps to get_row_homogeneous *>
extern fn bool GridLayout.get_row_homogeneous(&self) @extern("gtk_grid_layout_get_row_homogeneous");

<* Maps to get_row_spacing *>
extern fn uint GridLayout.get_row_spacing(&self) @extern("gtk_grid_layout_get_row_spacing");

<* Maps to set_baseline_row *>
extern fn void GridLayout.set_baseline_row(&self, int row) @extern("gtk_grid_layout_set_baseline_row");

<* Maps to set_column_homogeneous *>
extern fn void GridLayout.set_column_homogeneous(&self, bool homogeneous) @extern("gtk_grid_layout_set_column_homogeneous");

<* Maps to set_column_spacing *>
extern fn void GridLayout.set_column_spacing(&self, uint spacing) @extern("gtk_grid_layout_set_column_spacing");

<* Maps to set_row_baseline_position *>
extern fn void GridLayout.set_row_baseline_position(&self, int row, BaselinePosition pos) @extern("gtk_grid_layout_set_row_baseline_position");

<* Maps to set_row_homogeneous *>
extern fn void GridLayout.set_row_homogeneous(&self, bool homogeneous) @extern("gtk_grid_layout_set_row_homogeneous");

<* Maps to set_row_spacing *>
extern fn void GridLayout.set_row_spacing(&self, uint spacing) @extern("gtk_grid_layout_set_row_spacing");


<* Maps to GtkGridLayoutChild *>
distinct GridLayoutChild = void*;

fn LayoutChild* GridLayoutChild.as_LayoutChild(&self) => (LayoutChild*)(self);


<* Maps to get_column *>
extern fn int GridLayoutChild.get_column(&self) @extern("gtk_grid_layout_child_get_column");

<* Maps to get_column_span *>
extern fn int GridLayoutChild.get_column_span(&self) @extern("gtk_grid_layout_child_get_column_span");

<* Maps to get_row *>
extern fn int GridLayoutChild.get_row(&self) @extern("gtk_grid_layout_child_get_row");

<* Maps to get_row_span *>
extern fn int GridLayoutChild.get_row_span(&self) @extern("gtk_grid_layout_child_get_row_span");

<* Maps to set_column *>
extern fn void GridLayoutChild.set_column(&self, int column) @extern("gtk_grid_layout_child_set_column");

<* Maps to set_column_span *>
extern fn void GridLayoutChild.set_column_span(&self, int span) @extern("gtk_grid_layout_child_set_column_span");

<* Maps to set_row *>
extern fn void GridLayoutChild.set_row(&self, int row) @extern("gtk_grid_layout_child_set_row");

<* Maps to set_row_span *>
extern fn void GridLayoutChild.set_row_span(&self, int span) @extern("gtk_grid_layout_child_set_row_span");


<* Maps to GtkGridView *>
distinct GridView = void*;

fn ListBase* GridView.as_ListBase(&self) => (ListBase*)(self);


<* Maps to get_enable_rubberband *>
extern fn bool GridView.get_enable_rubberband(&self) @extern("gtk_grid_view_get_enable_rubberband");

<* Maps to get_factory *>
extern fn ListItemFactory* GridView.get_factory(&self) @extern("gtk_grid_view_get_factory");

<* Maps to get_max_columns *>
extern fn uint GridView.get_max_columns(&self) @extern("gtk_grid_view_get_max_columns");

<* Maps to get_min_columns *>
extern fn uint GridView.get_min_columns(&self) @extern("gtk_grid_view_get_min_columns");

<* Maps to get_model *>
extern fn SelectionModel* GridView.get_model(&self) @extern("gtk_grid_view_get_model");

<* Maps to get_single_click_activate *>
extern fn bool GridView.get_single_click_activate(&self) @extern("gtk_grid_view_get_single_click_activate");

<* Maps to get_tab_behavior *>
extern fn ListTabBehavior GridView.get_tab_behavior(&self) @extern("gtk_grid_view_get_tab_behavior");

<* Maps to scroll_to *>
extern fn void GridView.scroll_to(&self, uint pos, ListScrollFlags flags, ScrollInfo* scroll) @extern("gtk_grid_view_scroll_to");

<* Maps to set_enable_rubberband *>
extern fn void GridView.set_enable_rubberband(&self, bool enable_rubberband) @extern("gtk_grid_view_set_enable_rubberband");

<* Maps to set_factory *>
extern fn void GridView.set_factory(&self, ListItemFactory* factory) @extern("gtk_grid_view_set_factory");

<* Maps to set_max_columns *>
extern fn void GridView.set_max_columns(&self, uint max_columns) @extern("gtk_grid_view_set_max_columns");

<* Maps to set_min_columns *>
extern fn void GridView.set_min_columns(&self, uint min_columns) @extern("gtk_grid_view_set_min_columns");

<* Maps to set_model *>
extern fn void GridView.set_model(&self, SelectionModel* model) @extern("gtk_grid_view_set_model");

<* Maps to set_single_click_activate *>
extern fn void GridView.set_single_click_activate(&self, bool single_click_activate) @extern("gtk_grid_view_set_single_click_activate");

<* Maps to set_tab_behavior *>
extern fn void GridView.set_tab_behavior(&self, ListTabBehavior tab_behavior) @extern("gtk_grid_view_set_tab_behavior");


<* Maps to GtkHeaderBar *>
distinct HeaderBar = void*;

fn Widget* HeaderBar.as_Widget(&self) => (Widget*)(self);


<* Maps to get_decoration_layout *>
extern fn ZString HeaderBar.get_decoration_layout(&self) @extern("gtk_header_bar_get_decoration_layout");

<* Maps to get_show_title_buttons *>
extern fn bool HeaderBar.get_show_title_buttons(&self) @extern("gtk_header_bar_get_show_title_buttons");

<* Maps to get_title_widget *>
extern fn Widget* HeaderBar.get_title_widget(&self) @extern("gtk_header_bar_get_title_widget");

<* Maps to pack_end *>
extern fn void HeaderBar.pack_end(&self, Widget* child) @extern("gtk_header_bar_pack_end");

<* Maps to pack_start *>
extern fn void HeaderBar.pack_start(&self, Widget* child) @extern("gtk_header_bar_pack_start");

<* Maps to remove *>
extern fn void HeaderBar.remove(&self, Widget* child) @extern("gtk_header_bar_remove");

<* Maps to set_decoration_layout *>
extern fn void HeaderBar.set_decoration_layout(&self, ZString layout) @extern("gtk_header_bar_set_decoration_layout");

<* Maps to set_show_title_buttons *>
extern fn void HeaderBar.set_show_title_buttons(&self, bool setting) @extern("gtk_header_bar_set_show_title_buttons");

<* Maps to set_title_widget *>
extern fn void HeaderBar.set_title_widget(&self, Widget* title_widget) @extern("gtk_header_bar_set_title_widget");


<* Maps to GtkIMContext *>
distinct IMContext = void*;

fn gobject::Object* IMContext.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to activate_osk *>
extern fn bool IMContext.activate_osk(&self, gdk::Event* event) @extern("gtk_im_context_activate_osk");

<* Maps to delete_surrounding *>
extern fn bool IMContext.delete_surrounding(&self, int offset, int n_chars) @extern("gtk_im_context_delete_surrounding");

<* Maps to filter_key *>
extern fn bool IMContext.filter_key(&self, bool press, gdk::Surface* surface, gdk::Device* device, uint time, uint keycode, gdk::ModifierType state, int group) @extern("gtk_im_context_filter_key");

<* Maps to filter_keypress *>
extern fn bool IMContext.filter_keypress(&self, gdk::Event* event) @extern("gtk_im_context_filter_keypress");

<* Maps to focus_in *>
extern fn void IMContext.focus_in(&self) @extern("gtk_im_context_focus_in");

<* Maps to focus_out *>
extern fn void IMContext.focus_out(&self) @extern("gtk_im_context_focus_out");

<* Maps to get_preedit_string *>
extern fn void IMContext.get_preedit_string(&self, ZString* str, pango::AttrList* attrs, int* cursor_pos) @extern("gtk_im_context_get_preedit_string");

<* Maps to get_surrounding *>
extern fn bool IMContext.get_surrounding(&self, ZString* text, int* cursor_index) @extern("gtk_im_context_get_surrounding");

<* Maps to get_surrounding_with_selection *>
extern fn bool IMContext.get_surrounding_with_selection(&self, ZString* text, int* cursor_index, int* anchor_index) @extern("gtk_im_context_get_surrounding_with_selection");

<* Maps to reset *>
extern fn void IMContext.reset(&self) @extern("gtk_im_context_reset");

<* Maps to set_client_widget *>
extern fn void IMContext.set_client_widget(&self, Widget* widget) @extern("gtk_im_context_set_client_widget");

<* Maps to set_cursor_location *>
extern fn void IMContext.set_cursor_location(&self, gdk::Rectangle* area) @extern("gtk_im_context_set_cursor_location");

<* Maps to set_surrounding *>
extern fn void IMContext.set_surrounding(&self, ZString text, int len, int cursor_index) @extern("gtk_im_context_set_surrounding");

<* Maps to set_surrounding_with_selection *>
extern fn void IMContext.set_surrounding_with_selection(&self, ZString text, int len, int cursor_index, int anchor_index) @extern("gtk_im_context_set_surrounding_with_selection");

<* Maps to set_use_preedit *>
extern fn void IMContext.set_use_preedit(&self, bool use_preedit) @extern("gtk_im_context_set_use_preedit");


<* Maps to GtkIMContextSimple *>
distinct IMContextSimple = void*;

fn IMContext* IMContextSimple.as_IMContext(&self) => (IMContext*)(self);


<* Maps to add_compose_file *>
extern fn void IMContextSimple.add_compose_file(&self, ZString compose_file) @extern("gtk_im_context_simple_add_compose_file");

<* Maps to add_table *>
extern fn void IMContextSimple.add_table(&self, ushort data, int max_seq_len, int n_seqs) @extern("gtk_im_context_simple_add_table");


<* Maps to GtkIMMulticontext *>
distinct IMMulticontext = void*;

fn IMContext* IMMulticontext.as_IMContext(&self) => (IMContext*)(self);


<* Maps to get_context_id *>
extern fn ZString IMMulticontext.get_context_id(&self) @extern("gtk_im_multicontext_get_context_id");

<* Maps to set_context_id *>
extern fn void IMMulticontext.set_context_id(&self, ZString context_id) @extern("gtk_im_multicontext_set_context_id");


<* Maps to GtkIconPaintable *>
distinct IconPaintable = void*;

fn gobject::Object* IconPaintable.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_file *>
extern fn gio::File* IconPaintable.get_file(&self) @extern("gtk_icon_paintable_get_file");

<* Maps to get_icon_name *>
extern fn ZString IconPaintable.get_icon_name(&self) @extern("gtk_icon_paintable_get_icon_name");

<* Maps to is_symbolic *>
extern fn bool IconPaintable.is_symbolic(&self) @extern("gtk_icon_paintable_is_symbolic");


<* Maps to GtkIconTheme *>
distinct IconTheme = void*;

fn gobject::Object* IconTheme.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to add_resource_path *>
extern fn void IconTheme.add_resource_path(&self, ZString path) @extern("gtk_icon_theme_add_resource_path");

<* Maps to add_search_path *>
extern fn void IconTheme.add_search_path(&self, ZString path) @extern("gtk_icon_theme_add_search_path");

<* Maps to get_display *>
extern fn gdk::Display* IconTheme.get_display(&self) @extern("gtk_icon_theme_get_display");

<* Maps to get_icon_names *>
extern fn ZString IconTheme.get_icon_names(&self) @extern("gtk_icon_theme_get_icon_names");

<* Maps to get_icon_sizes *>
extern fn int IconTheme.get_icon_sizes(&self, ZString icon_name) @extern("gtk_icon_theme_get_icon_sizes");

<* Maps to get_resource_path *>
extern fn ZString IconTheme.get_resource_path(&self) @extern("gtk_icon_theme_get_resource_path");

<* Maps to get_search_path *>
extern fn ZString IconTheme.get_search_path(&self) @extern("gtk_icon_theme_get_search_path");

<* Maps to get_theme_name *>
extern fn ZString* IconTheme.get_theme_name(&self) @extern("gtk_icon_theme_get_theme_name");

<* Maps to has_gicon *>
extern fn bool IconTheme.has_gicon(&self, gio::Icon* gicon) @extern("gtk_icon_theme_has_gicon");

<* Maps to has_icon *>
extern fn bool IconTheme.has_icon(&self, ZString icon_name) @extern("gtk_icon_theme_has_icon");

<* Maps to lookup_by_gicon *>
extern fn IconPaintable* IconTheme.lookup_by_gicon(&self, gio::Icon* icon, int size, int scale, TextDirection direction, IconLookupFlags flags) @extern("gtk_icon_theme_lookup_by_gicon");

<* Maps to lookup_icon *>
extern fn IconPaintable* IconTheme.lookup_icon(&self, ZString icon_name, ZString* fallbacks, int size, int scale, TextDirection direction, IconLookupFlags flags) @extern("gtk_icon_theme_lookup_icon");

<* Maps to set_resource_path *>
extern fn void IconTheme.set_resource_path(&self, ZString path) @extern("gtk_icon_theme_set_resource_path");

<* Maps to set_search_path *>
extern fn void IconTheme.set_search_path(&self, ZString path) @extern("gtk_icon_theme_set_search_path");

<* Maps to set_theme_name *>
extern fn void IconTheme.set_theme_name(&self, ZString theme_name) @extern("gtk_icon_theme_set_theme_name");


<* Maps to GtkIconView *>
distinct IconView = void*;

fn Widget* IconView.as_Widget(&self) => (Widget*)(self);


<* Maps to create_drag_icon *>
extern fn gdk::Paintable* IconView.create_drag_icon(&self, TreePath* path) @extern("gtk_icon_view_create_drag_icon");

<* Maps to enable_model_drag_dest *>
extern fn void IconView.enable_model_drag_dest(&self, gdk::ContentFormats* formats, gdk::DragAction actions) @extern("gtk_icon_view_enable_model_drag_dest");

<* Maps to enable_model_drag_source *>
extern fn void IconView.enable_model_drag_source(&self, gdk::ModifierType start_button_mask, gdk::ContentFormats* formats, gdk::DragAction actions) @extern("gtk_icon_view_enable_model_drag_source");

<* Maps to get_activate_on_single_click *>
extern fn bool IconView.get_activate_on_single_click(&self) @extern("gtk_icon_view_get_activate_on_single_click");

<* Maps to get_cell_rect *>
extern fn bool IconView.get_cell_rect(&self, TreePath* path, CellRenderer* cell, gdk::Rectangle* rect) @extern("gtk_icon_view_get_cell_rect");

<* Maps to get_column_spacing *>
extern fn int IconView.get_column_spacing(&self) @extern("gtk_icon_view_get_column_spacing");

<* Maps to get_columns *>
extern fn int IconView.get_columns(&self) @extern("gtk_icon_view_get_columns");

<* Maps to get_cursor *>
extern fn bool IconView.get_cursor(&self, TreePath* path, CellRenderer* cell) @extern("gtk_icon_view_get_cursor");

<* Maps to get_dest_item_at_pos *>
extern fn bool IconView.get_dest_item_at_pos(&self, int drag_x, int drag_y, TreePath* path, IconViewDropPosition* pos) @extern("gtk_icon_view_get_dest_item_at_pos");

<* Maps to get_drag_dest_item *>
extern fn void IconView.get_drag_dest_item(&self, TreePath* path, IconViewDropPosition* pos) @extern("gtk_icon_view_get_drag_dest_item");

<* Maps to get_item_at_pos *>
extern fn bool IconView.get_item_at_pos(&self, int x, int y, TreePath* path, CellRenderer* cell) @extern("gtk_icon_view_get_item_at_pos");

<* Maps to get_item_column *>
extern fn int IconView.get_item_column(&self, TreePath* path) @extern("gtk_icon_view_get_item_column");

<* Maps to get_item_orientation *>
extern fn Orientation IconView.get_item_orientation(&self) @extern("gtk_icon_view_get_item_orientation");

<* Maps to get_item_padding *>
extern fn int IconView.get_item_padding(&self) @extern("gtk_icon_view_get_item_padding");

<* Maps to get_item_row *>
extern fn int IconView.get_item_row(&self, TreePath* path) @extern("gtk_icon_view_get_item_row");

<* Maps to get_item_width *>
extern fn int IconView.get_item_width(&self) @extern("gtk_icon_view_get_item_width");

<* Maps to get_margin *>
extern fn int IconView.get_margin(&self) @extern("gtk_icon_view_get_margin");

<* Maps to get_markup_column *>
extern fn int IconView.get_markup_column(&self) @extern("gtk_icon_view_get_markup_column");

<* Maps to get_model *>
extern fn TreeModel* IconView.get_model(&self) @extern("gtk_icon_view_get_model");

<* Maps to get_path_at_pos *>
extern fn TreePath* IconView.get_path_at_pos(&self, int x, int y) @extern("gtk_icon_view_get_path_at_pos");

<* Maps to get_pixbuf_column *>
extern fn int IconView.get_pixbuf_column(&self) @extern("gtk_icon_view_get_pixbuf_column");

<* Maps to get_reorderable *>
extern fn bool IconView.get_reorderable(&self) @extern("gtk_icon_view_get_reorderable");

<* Maps to get_row_spacing *>
extern fn int IconView.get_row_spacing(&self) @extern("gtk_icon_view_get_row_spacing");

<* Maps to get_selected_items *>
extern fn glib::List* IconView.get_selected_items(&self) @extern("gtk_icon_view_get_selected_items");

<* Maps to get_selection_mode *>
extern fn SelectionMode IconView.get_selection_mode(&self) @extern("gtk_icon_view_get_selection_mode");

<* Maps to get_spacing *>
extern fn int IconView.get_spacing(&self) @extern("gtk_icon_view_get_spacing");

<* Maps to get_text_column *>
extern fn int IconView.get_text_column(&self) @extern("gtk_icon_view_get_text_column");

<* Maps to get_tooltip_column *>
extern fn int IconView.get_tooltip_column(&self) @extern("gtk_icon_view_get_tooltip_column");

<* Maps to get_tooltip_context *>
extern fn bool IconView.get_tooltip_context(&self, int x, int y, bool keyboard_tip, TreeModel* model, TreePath* path, TreeIter* iter) @extern("gtk_icon_view_get_tooltip_context");

<* Maps to get_visible_range *>
extern fn bool IconView.get_visible_range(&self, TreePath* start_path, TreePath* end_path) @extern("gtk_icon_view_get_visible_range");

<* Maps to item_activated *>
extern fn void IconView.item_activated(&self, TreePath* path) @extern("gtk_icon_view_item_activated");

<* Maps to path_is_selected *>
extern fn bool IconView.path_is_selected(&self, TreePath* path) @extern("gtk_icon_view_path_is_selected");

<* Maps to scroll_to_path *>
extern fn void IconView.scroll_to_path(&self, TreePath* path, bool use_align, float row_align, float col_align) @extern("gtk_icon_view_scroll_to_path");

<* Maps to select_all *>
extern fn void IconView.select_all(&self) @extern("gtk_icon_view_select_all");

<* Maps to select_path *>
extern fn void IconView.select_path(&self, TreePath* path) @extern("gtk_icon_view_select_path");

<* Maps to selected_foreach *>
extern fn void IconView.selected_foreach(&self, IconViewForeachFunc func, void* data) @extern("gtk_icon_view_selected_foreach");

<* Maps to set_activate_on_single_click *>
extern fn void IconView.set_activate_on_single_click(&self, bool single) @extern("gtk_icon_view_set_activate_on_single_click");

<* Maps to set_column_spacing *>
extern fn void IconView.set_column_spacing(&self, int column_spacing) @extern("gtk_icon_view_set_column_spacing");

<* Maps to set_columns *>
extern fn void IconView.set_columns(&self, int columns) @extern("gtk_icon_view_set_columns");

<* Maps to set_cursor *>
extern fn void IconView.set_cursor(&self, TreePath* path, CellRenderer* cell, bool start_editing) @extern("gtk_icon_view_set_cursor");

<* Maps to set_drag_dest_item *>
extern fn void IconView.set_drag_dest_item(&self, TreePath* path, IconViewDropPosition pos) @extern("gtk_icon_view_set_drag_dest_item");

<* Maps to set_item_orientation *>
extern fn void IconView.set_item_orientation(&self, Orientation orientation) @extern("gtk_icon_view_set_item_orientation");

<* Maps to set_item_padding *>
extern fn void IconView.set_item_padding(&self, int item_padding) @extern("gtk_icon_view_set_item_padding");

<* Maps to set_item_width *>
extern fn void IconView.set_item_width(&self, int item_width) @extern("gtk_icon_view_set_item_width");

<* Maps to set_margin *>
extern fn void IconView.set_margin(&self, int margin) @extern("gtk_icon_view_set_margin");

<* Maps to set_markup_column *>
extern fn void IconView.set_markup_column(&self, int column) @extern("gtk_icon_view_set_markup_column");

<* Maps to set_model *>
extern fn void IconView.set_model(&self, TreeModel* model) @extern("gtk_icon_view_set_model");

<* Maps to set_pixbuf_column *>
extern fn void IconView.set_pixbuf_column(&self, int column) @extern("gtk_icon_view_set_pixbuf_column");

<* Maps to set_reorderable *>
extern fn void IconView.set_reorderable(&self, bool reorderable) @extern("gtk_icon_view_set_reorderable");

<* Maps to set_row_spacing *>
extern fn void IconView.set_row_spacing(&self, int row_spacing) @extern("gtk_icon_view_set_row_spacing");

<* Maps to set_selection_mode *>
extern fn void IconView.set_selection_mode(&self, SelectionMode mode) @extern("gtk_icon_view_set_selection_mode");

<* Maps to set_spacing *>
extern fn void IconView.set_spacing(&self, int spacing) @extern("gtk_icon_view_set_spacing");

<* Maps to set_text_column *>
extern fn void IconView.set_text_column(&self, int column) @extern("gtk_icon_view_set_text_column");

<* Maps to set_tooltip_cell *>
extern fn void IconView.set_tooltip_cell(&self, Tooltip* tooltip, TreePath* path, CellRenderer* cell) @extern("gtk_icon_view_set_tooltip_cell");

<* Maps to set_tooltip_column *>
extern fn void IconView.set_tooltip_column(&self, int column) @extern("gtk_icon_view_set_tooltip_column");

<* Maps to set_tooltip_item *>
extern fn void IconView.set_tooltip_item(&self, Tooltip* tooltip, TreePath* path) @extern("gtk_icon_view_set_tooltip_item");

<* Maps to unselect_all *>
extern fn void IconView.unselect_all(&self) @extern("gtk_icon_view_unselect_all");

<* Maps to unselect_path *>
extern fn void IconView.unselect_path(&self, TreePath* path) @extern("gtk_icon_view_unselect_path");

<* Maps to unset_model_drag_dest *>
extern fn void IconView.unset_model_drag_dest(&self) @extern("gtk_icon_view_unset_model_drag_dest");

<* Maps to unset_model_drag_source *>
extern fn void IconView.unset_model_drag_source(&self) @extern("gtk_icon_view_unset_model_drag_source");


<* Maps to GtkImage *>
distinct Image = void*;

fn Widget* Image.as_Widget(&self) => (Widget*)(self);


<* Maps to clear *>
extern fn void Image.clear(&self) @extern("gtk_image_clear");

<* Maps to get_gicon *>
extern fn gio::Icon* Image.get_gicon(&self) @extern("gtk_image_get_gicon");

<* Maps to get_icon_name *>
extern fn ZString Image.get_icon_name(&self) @extern("gtk_image_get_icon_name");

<* Maps to get_icon_size *>
extern fn IconSize Image.get_icon_size(&self) @extern("gtk_image_get_icon_size");

<* Maps to get_paintable *>
extern fn gdk::Paintable* Image.get_paintable(&self) @extern("gtk_image_get_paintable");

<* Maps to get_pixel_size *>
extern fn int Image.get_pixel_size(&self) @extern("gtk_image_get_pixel_size");

<* Maps to get_storage_type *>
extern fn ImageType Image.get_storage_type(&self) @extern("gtk_image_get_storage_type");

<* Maps to set_from_file *>
extern fn void Image.set_from_file(&self, ZString filename) @extern("gtk_image_set_from_file");

<* Maps to set_from_gicon *>
extern fn void Image.set_from_gicon(&self, gio::Icon* icon) @extern("gtk_image_set_from_gicon");

<* Maps to set_from_icon_name *>
extern fn void Image.set_from_icon_name(&self, ZString icon_name) @extern("gtk_image_set_from_icon_name");

<* Maps to set_from_paintable *>
extern fn void Image.set_from_paintable(&self, gdk::Paintable* paintable) @extern("gtk_image_set_from_paintable");

<* Maps to set_from_pixbuf *>
extern fn void Image.set_from_pixbuf(&self, gdkpixbuf::Pixbuf* pixbuf) @extern("gtk_image_set_from_pixbuf");

<* Maps to set_from_resource *>
extern fn void Image.set_from_resource(&self, ZString resource_path) @extern("gtk_image_set_from_resource");

<* Maps to set_icon_size *>
extern fn void Image.set_icon_size(&self, IconSize icon_size) @extern("gtk_image_set_icon_size");

<* Maps to set_pixel_size *>
extern fn void Image.set_pixel_size(&self, int pixel_size) @extern("gtk_image_set_pixel_size");


<* Maps to GtkInfoBar *>
distinct InfoBar = void*;

fn Widget* InfoBar.as_Widget(&self) => (Widget*)(self);


<* Maps to add_action_widget *>
extern fn void InfoBar.add_action_widget(&self, Widget* child, int response_id) @extern("gtk_info_bar_add_action_widget");

<* Maps to add_button *>
extern fn Button* InfoBar.add_button(&self, ZString button_text, int response_id) @extern("gtk_info_bar_add_button");

<* Maps to add_buttons *>
extern fn void InfoBar.add_buttons(&self, ZString first_button_text, any rest) @extern("gtk_info_bar_add_buttons");

<* Maps to add_child *>
extern fn void InfoBar.add_child(&self, Widget* widget) @extern("gtk_info_bar_add_child");

<* Maps to get_message_type *>
extern fn MessageType InfoBar.get_message_type(&self) @extern("gtk_info_bar_get_message_type");

<* Maps to get_revealed *>
extern fn bool InfoBar.get_revealed(&self) @extern("gtk_info_bar_get_revealed");

<* Maps to get_show_close_button *>
extern fn bool InfoBar.get_show_close_button(&self) @extern("gtk_info_bar_get_show_close_button");

<* Maps to remove_action_widget *>
extern fn void InfoBar.remove_action_widget(&self, Widget* widget) @extern("gtk_info_bar_remove_action_widget");

<* Maps to remove_child *>
extern fn void InfoBar.remove_child(&self, Widget* widget) @extern("gtk_info_bar_remove_child");

<* Maps to response *>
extern fn void InfoBar.response(&self, int response_id) @extern("gtk_info_bar_response");

<* Maps to set_default_response *>
extern fn void InfoBar.set_default_response(&self, int response_id) @extern("gtk_info_bar_set_default_response");

<* Maps to set_message_type *>
extern fn void InfoBar.set_message_type(&self, MessageType message_type) @extern("gtk_info_bar_set_message_type");

<* Maps to set_response_sensitive *>
extern fn void InfoBar.set_response_sensitive(&self, int response_id, bool setting) @extern("gtk_info_bar_set_response_sensitive");

<* Maps to set_revealed *>
extern fn void InfoBar.set_revealed(&self, bool revealed) @extern("gtk_info_bar_set_revealed");

<* Maps to set_show_close_button *>
extern fn void InfoBar.set_show_close_button(&self, bool setting) @extern("gtk_info_bar_set_show_close_button");


<* Maps to GtkInscription *>
distinct Inscription = void*;

fn Widget* Inscription.as_Widget(&self) => (Widget*)(self);


<* Maps to get_attributes *>
extern fn pango::AttrList* Inscription.get_attributes(&self) @extern("gtk_inscription_get_attributes");

<* Maps to get_min_chars *>
extern fn uint Inscription.get_min_chars(&self) @extern("gtk_inscription_get_min_chars");

<* Maps to get_min_lines *>
extern fn uint Inscription.get_min_lines(&self) @extern("gtk_inscription_get_min_lines");

<* Maps to get_nat_chars *>
extern fn uint Inscription.get_nat_chars(&self) @extern("gtk_inscription_get_nat_chars");

<* Maps to get_nat_lines *>
extern fn uint Inscription.get_nat_lines(&self) @extern("gtk_inscription_get_nat_lines");

<* Maps to get_text *>
extern fn ZString Inscription.get_text(&self) @extern("gtk_inscription_get_text");

<* Maps to get_text_overflow *>
extern fn InscriptionOverflow Inscription.get_text_overflow(&self) @extern("gtk_inscription_get_text_overflow");

<* Maps to get_wrap_mode *>
extern fn pango::WrapMode Inscription.get_wrap_mode(&self) @extern("gtk_inscription_get_wrap_mode");

<* Maps to get_xalign *>
extern fn float Inscription.get_xalign(&self) @extern("gtk_inscription_get_xalign");

<* Maps to get_yalign *>
extern fn float Inscription.get_yalign(&self) @extern("gtk_inscription_get_yalign");

<* Maps to set_attributes *>
extern fn void Inscription.set_attributes(&self, pango::AttrList* attrs) @extern("gtk_inscription_set_attributes");

<* Maps to set_markup *>
extern fn void Inscription.set_markup(&self, ZString markup) @extern("gtk_inscription_set_markup");

<* Maps to set_min_chars *>
extern fn void Inscription.set_min_chars(&self, uint min_chars) @extern("gtk_inscription_set_min_chars");

<* Maps to set_min_lines *>
extern fn void Inscription.set_min_lines(&self, uint min_lines) @extern("gtk_inscription_set_min_lines");

<* Maps to set_nat_chars *>
extern fn void Inscription.set_nat_chars(&self, uint nat_chars) @extern("gtk_inscription_set_nat_chars");

<* Maps to set_nat_lines *>
extern fn void Inscription.set_nat_lines(&self, uint nat_lines) @extern("gtk_inscription_set_nat_lines");

<* Maps to set_text *>
extern fn void Inscription.set_text(&self, ZString text) @extern("gtk_inscription_set_text");

<* Maps to set_text_overflow *>
extern fn void Inscription.set_text_overflow(&self, InscriptionOverflow overflow) @extern("gtk_inscription_set_text_overflow");

<* Maps to set_wrap_mode *>
extern fn void Inscription.set_wrap_mode(&self, pango::WrapMode wrap_mode) @extern("gtk_inscription_set_wrap_mode");

<* Maps to set_xalign *>
extern fn void Inscription.set_xalign(&self, float xalign) @extern("gtk_inscription_set_xalign");

<* Maps to set_yalign *>
extern fn void Inscription.set_yalign(&self, float yalign) @extern("gtk_inscription_set_yalign");


<* Maps to GtkKeyvalTrigger *>
distinct KeyvalTrigger = void*;

fn ShortcutTrigger* KeyvalTrigger.as_ShortcutTrigger(&self) => (ShortcutTrigger*)(self);


<* Maps to get_keyval *>
extern fn uint KeyvalTrigger.get_keyval(&self) @extern("gtk_keyval_trigger_get_keyval");

<* Maps to get_modifiers *>
extern fn gdk::ModifierType KeyvalTrigger.get_modifiers(&self) @extern("gtk_keyval_trigger_get_modifiers");


<* Maps to GtkLabel *>
distinct Label = void*;

fn Widget* Label.as_Widget(&self) => (Widget*)(self);


<* Maps to get_attributes *>
extern fn pango::AttrList* Label.get_attributes(&self) @extern("gtk_label_get_attributes");

<* Maps to get_current_uri *>
extern fn ZString Label.get_current_uri(&self) @extern("gtk_label_get_current_uri");

<* Maps to get_ellipsize *>
extern fn pango::EllipsizeMode Label.get_ellipsize(&self) @extern("gtk_label_get_ellipsize");

<* Maps to get_extra_menu *>
extern fn gio::MenuModel* Label.get_extra_menu(&self) @extern("gtk_label_get_extra_menu");

<* Maps to get_justify *>
extern fn Justification Label.get_justify(&self) @extern("gtk_label_get_justify");

<* Maps to get_label *>
extern fn ZString Label.get_label(&self) @extern("gtk_label_get_label");

<* Maps to get_layout *>
extern fn pango::Layout* Label.get_layout(&self) @extern("gtk_label_get_layout");

<* Maps to get_layout_offsets *>
extern fn void Label.get_layout_offsets(&self, int* x, int* y) @extern("gtk_label_get_layout_offsets");

<* Maps to get_lines *>
extern fn int Label.get_lines(&self) @extern("gtk_label_get_lines");

<* Maps to get_max_width_chars *>
extern fn int Label.get_max_width_chars(&self) @extern("gtk_label_get_max_width_chars");

<* Maps to get_mnemonic_keyval *>
extern fn uint Label.get_mnemonic_keyval(&self) @extern("gtk_label_get_mnemonic_keyval");

<* Maps to get_mnemonic_widget *>
extern fn Widget* Label.get_mnemonic_widget(&self) @extern("gtk_label_get_mnemonic_widget");

<* Maps to get_natural_wrap_mode *>
extern fn NaturalWrapMode Label.get_natural_wrap_mode(&self) @extern("gtk_label_get_natural_wrap_mode");

<* Maps to get_selectable *>
extern fn bool Label.get_selectable(&self) @extern("gtk_label_get_selectable");

<* Maps to get_selection_bounds *>
extern fn bool Label.get_selection_bounds(&self, int* start, int* end) @extern("gtk_label_get_selection_bounds");

<* Maps to get_single_line_mode *>
extern fn bool Label.get_single_line_mode(&self) @extern("gtk_label_get_single_line_mode");

<* Maps to get_tabs *>
extern fn pango::TabArray* Label.get_tabs(&self) @extern("gtk_label_get_tabs");

<* Maps to get_text *>
extern fn ZString Label.get_text(&self) @extern("gtk_label_get_text");

<* Maps to get_use_markup *>
extern fn bool Label.get_use_markup(&self) @extern("gtk_label_get_use_markup");

<* Maps to get_use_underline *>
extern fn bool Label.get_use_underline(&self) @extern("gtk_label_get_use_underline");

<* Maps to get_width_chars *>
extern fn int Label.get_width_chars(&self) @extern("gtk_label_get_width_chars");

<* Maps to get_wrap *>
extern fn bool Label.get_wrap(&self) @extern("gtk_label_get_wrap");

<* Maps to get_wrap_mode *>
extern fn pango::WrapMode Label.get_wrap_mode(&self) @extern("gtk_label_get_wrap_mode");

<* Maps to get_xalign *>
extern fn float Label.get_xalign(&self) @extern("gtk_label_get_xalign");

<* Maps to get_yalign *>
extern fn float Label.get_yalign(&self) @extern("gtk_label_get_yalign");

<* Maps to select_region *>
extern fn void Label.select_region(&self, int start_offset, int end_offset) @extern("gtk_label_select_region");

<* Maps to set_attributes *>
extern fn void Label.set_attributes(&self, pango::AttrList* attrs) @extern("gtk_label_set_attributes");

<* Maps to set_ellipsize *>
extern fn void Label.set_ellipsize(&self, pango::EllipsizeMode mode) @extern("gtk_label_set_ellipsize");

<* Maps to set_extra_menu *>
extern fn void Label.set_extra_menu(&self, gio::MenuModel* model) @extern("gtk_label_set_extra_menu");

<* Maps to set_justify *>
extern fn void Label.set_justify(&self, Justification jtype) @extern("gtk_label_set_justify");

<* Maps to set_label *>
extern fn void Label.set_label(&self, ZString str) @extern("gtk_label_set_label");

<* Maps to set_lines *>
extern fn void Label.set_lines(&self, int lines) @extern("gtk_label_set_lines");

<* Maps to set_markup *>
extern fn void Label.set_markup(&self, ZString str) @extern("gtk_label_set_markup");

<* Maps to set_markup_with_mnemonic *>
extern fn void Label.set_markup_with_mnemonic(&self, ZString str) @extern("gtk_label_set_markup_with_mnemonic");

<* Maps to set_max_width_chars *>
extern fn void Label.set_max_width_chars(&self, int n_chars) @extern("gtk_label_set_max_width_chars");

<* Maps to set_mnemonic_widget *>
extern fn void Label.set_mnemonic_widget(&self, Widget* widget) @extern("gtk_label_set_mnemonic_widget");

<* Maps to set_natural_wrap_mode *>
extern fn void Label.set_natural_wrap_mode(&self, NaturalWrapMode wrap_mode) @extern("gtk_label_set_natural_wrap_mode");

<* Maps to set_selectable *>
extern fn void Label.set_selectable(&self, bool setting) @extern("gtk_label_set_selectable");

<* Maps to set_single_line_mode *>
extern fn void Label.set_single_line_mode(&self, bool single_line_mode) @extern("gtk_label_set_single_line_mode");

<* Maps to set_tabs *>
extern fn void Label.set_tabs(&self, pango::TabArray* tabs) @extern("gtk_label_set_tabs");

<* Maps to set_text *>
extern fn void Label.set_text(&self, ZString str) @extern("gtk_label_set_text");

<* Maps to set_text_with_mnemonic *>
extern fn void Label.set_text_with_mnemonic(&self, ZString str) @extern("gtk_label_set_text_with_mnemonic");

<* Maps to set_use_markup *>
extern fn void Label.set_use_markup(&self, bool setting) @extern("gtk_label_set_use_markup");

<* Maps to set_use_underline *>
extern fn void Label.set_use_underline(&self, bool setting) @extern("gtk_label_set_use_underline");

<* Maps to set_width_chars *>
extern fn void Label.set_width_chars(&self, int n_chars) @extern("gtk_label_set_width_chars");

<* Maps to set_wrap *>
extern fn void Label.set_wrap(&self, bool wrap) @extern("gtk_label_set_wrap");

<* Maps to set_wrap_mode *>
extern fn void Label.set_wrap_mode(&self, pango::WrapMode wrap_mode) @extern("gtk_label_set_wrap_mode");

<* Maps to set_xalign *>
extern fn void Label.set_xalign(&self, float xalign) @extern("gtk_label_set_xalign");

<* Maps to set_yalign *>
extern fn void Label.set_yalign(&self, float yalign) @extern("gtk_label_set_yalign");


<* Maps to GtkLayoutChild *>
distinct LayoutChild = void*;

fn gobject::Object* LayoutChild.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_child_widget *>
extern fn Widget* LayoutChild.get_child_widget(&self) @extern("gtk_layout_child_get_child_widget");

<* Maps to get_layout_manager *>
extern fn LayoutManager* LayoutChild.get_layout_manager(&self) @extern("gtk_layout_child_get_layout_manager");


<* Maps to GtkLayoutManager *>
distinct LayoutManager = void*;

fn gobject::Object* LayoutManager.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to allocate *>
extern fn void LayoutManager.allocate(&self, Widget* widget, int width, int height, int baseline) @extern("gtk_layout_manager_allocate");

<* Maps to get_layout_child *>
extern fn LayoutChild* LayoutManager.get_layout_child(&self, Widget* child) @extern("gtk_layout_manager_get_layout_child");

<* Maps to get_request_mode *>
extern fn SizeRequestMode LayoutManager.get_request_mode(&self) @extern("gtk_layout_manager_get_request_mode");

<* Maps to get_widget *>
extern fn Widget* LayoutManager.get_widget(&self) @extern("gtk_layout_manager_get_widget");

<* Maps to layout_changed *>
extern fn void LayoutManager.layout_changed(&self) @extern("gtk_layout_manager_layout_changed");

<* Maps to measure *>
extern fn void LayoutManager.measure(&self, Widget* widget, Orientation orientation, int for_size, int* minimum, int* natural, int* minimum_baseline, int* natural_baseline) @extern("gtk_layout_manager_measure");


<* Maps to GtkLevelBar *>
distinct LevelBar = void*;

fn Widget* LevelBar.as_Widget(&self) => (Widget*)(self);


<* Maps to add_offset_value *>
extern fn void LevelBar.add_offset_value(&self, ZString name, double value) @extern("gtk_level_bar_add_offset_value");

<* Maps to get_inverted *>
extern fn bool LevelBar.get_inverted(&self) @extern("gtk_level_bar_get_inverted");

<* Maps to get_max_value *>
extern fn double LevelBar.get_max_value(&self) @extern("gtk_level_bar_get_max_value");

<* Maps to get_min_value *>
extern fn double LevelBar.get_min_value(&self) @extern("gtk_level_bar_get_min_value");

<* Maps to get_mode *>
extern fn LevelBarMode LevelBar.get_mode(&self) @extern("gtk_level_bar_get_mode");

<* Maps to get_offset_value *>
extern fn bool LevelBar.get_offset_value(&self, ZString name, double* value) @extern("gtk_level_bar_get_offset_value");

<* Maps to get_value *>
extern fn double LevelBar.get_value(&self) @extern("gtk_level_bar_get_value");

<* Maps to remove_offset_value *>
extern fn void LevelBar.remove_offset_value(&self, ZString name) @extern("gtk_level_bar_remove_offset_value");

<* Maps to set_inverted *>
extern fn void LevelBar.set_inverted(&self, bool inverted) @extern("gtk_level_bar_set_inverted");

<* Maps to set_max_value *>
extern fn void LevelBar.set_max_value(&self, double value) @extern("gtk_level_bar_set_max_value");

<* Maps to set_min_value *>
extern fn void LevelBar.set_min_value(&self, double value) @extern("gtk_level_bar_set_min_value");

<* Maps to set_mode *>
extern fn void LevelBar.set_mode(&self, LevelBarMode mode) @extern("gtk_level_bar_set_mode");

<* Maps to set_value *>
extern fn void LevelBar.set_value(&self, double value) @extern("gtk_level_bar_set_value");


<* Maps to GtkLinkButton *>
distinct LinkButton = void*;

fn Button* LinkButton.as_Button(&self) => (Button*)(self);


<* Maps to get_uri *>
extern fn ZString LinkButton.get_uri(&self) @extern("gtk_link_button_get_uri");

<* Maps to get_visited *>
extern fn bool LinkButton.get_visited(&self) @extern("gtk_link_button_get_visited");

<* Maps to set_uri *>
extern fn void LinkButton.set_uri(&self, ZString uri) @extern("gtk_link_button_set_uri");

<* Maps to set_visited *>
extern fn void LinkButton.set_visited(&self, bool visited) @extern("gtk_link_button_set_visited");


<* Maps to GtkListBase *>
distinct ListBase = void*;

fn Widget* ListBase.as_Widget(&self) => (Widget*)(self);



<* Maps to GtkListBox *>
distinct ListBox = void*;

fn Widget* ListBox.as_Widget(&self) => (Widget*)(self);


<* Maps to append *>
extern fn void ListBox.append(&self, Widget* child) @extern("gtk_list_box_append");

<* Maps to bind_model *>
extern fn void ListBox.bind_model(&self, gio::ListModel* model, ListBoxCreateWidgetFunc create_widget_func, void* user_data, glib::DestroyNotify user_data_free_func) @extern("gtk_list_box_bind_model");

<* Maps to drag_highlight_row *>
extern fn void ListBox.drag_highlight_row(&self, ListBoxRow* row) @extern("gtk_list_box_drag_highlight_row");

<* Maps to drag_unhighlight_row *>
extern fn void ListBox.drag_unhighlight_row(&self) @extern("gtk_list_box_drag_unhighlight_row");

<* Maps to get_activate_on_single_click *>
extern fn bool ListBox.get_activate_on_single_click(&self) @extern("gtk_list_box_get_activate_on_single_click");

<* Maps to get_adjustment *>
extern fn Adjustment* ListBox.get_adjustment(&self) @extern("gtk_list_box_get_adjustment");

<* Maps to get_row_at_index *>
extern fn ListBoxRow* ListBox.get_row_at_index(&self, int index_) @extern("gtk_list_box_get_row_at_index");

<* Maps to get_row_at_y *>
extern fn ListBoxRow* ListBox.get_row_at_y(&self, int y) @extern("gtk_list_box_get_row_at_y");

<* Maps to get_selected_row *>
extern fn ListBoxRow* ListBox.get_selected_row(&self) @extern("gtk_list_box_get_selected_row");

<* Maps to get_selected_rows *>
extern fn glib::List* ListBox.get_selected_rows(&self) @extern("gtk_list_box_get_selected_rows");

<* Maps to get_selection_mode *>
extern fn SelectionMode ListBox.get_selection_mode(&self) @extern("gtk_list_box_get_selection_mode");

<* Maps to get_show_separators *>
extern fn bool ListBox.get_show_separators(&self) @extern("gtk_list_box_get_show_separators");

<* Maps to insert *>
extern fn void ListBox.insert(&self, Widget* child, int position) @extern("gtk_list_box_insert");

<* Maps to invalidate_filter *>
extern fn void ListBox.invalidate_filter(&self) @extern("gtk_list_box_invalidate_filter");

<* Maps to invalidate_headers *>
extern fn void ListBox.invalidate_headers(&self) @extern("gtk_list_box_invalidate_headers");

<* Maps to invalidate_sort *>
extern fn void ListBox.invalidate_sort(&self) @extern("gtk_list_box_invalidate_sort");

<* Maps to prepend *>
extern fn void ListBox.prepend(&self, Widget* child) @extern("gtk_list_box_prepend");

<* Maps to remove *>
extern fn void ListBox.remove(&self, Widget* child) @extern("gtk_list_box_remove");

<* Maps to remove_all *>
extern fn void ListBox.remove_all(&self) @extern("gtk_list_box_remove_all");

<* Maps to select_all *>
extern fn void ListBox.select_all(&self) @extern("gtk_list_box_select_all");

<* Maps to select_row *>
extern fn void ListBox.select_row(&self, ListBoxRow* row) @extern("gtk_list_box_select_row");

<* Maps to selected_foreach *>
extern fn void ListBox.selected_foreach(&self, ListBoxForeachFunc func, void* data) @extern("gtk_list_box_selected_foreach");

<* Maps to set_activate_on_single_click *>
extern fn void ListBox.set_activate_on_single_click(&self, bool single) @extern("gtk_list_box_set_activate_on_single_click");

<* Maps to set_adjustment *>
extern fn void ListBox.set_adjustment(&self, Adjustment* adjustment) @extern("gtk_list_box_set_adjustment");

<* Maps to set_filter_func *>
extern fn void ListBox.set_filter_func(&self, ListBoxFilterFunc filter_func, void* user_data, glib::DestroyNotify destroy) @extern("gtk_list_box_set_filter_func");

<* Maps to set_header_func *>
extern fn void ListBox.set_header_func(&self, ListBoxUpdateHeaderFunc update_header, void* user_data, glib::DestroyNotify destroy) @extern("gtk_list_box_set_header_func");

<* Maps to set_placeholder *>
extern fn void ListBox.set_placeholder(&self, Widget* placeholder) @extern("gtk_list_box_set_placeholder");

<* Maps to set_selection_mode *>
extern fn void ListBox.set_selection_mode(&self, SelectionMode mode) @extern("gtk_list_box_set_selection_mode");

<* Maps to set_show_separators *>
extern fn void ListBox.set_show_separators(&self, bool show_separators) @extern("gtk_list_box_set_show_separators");

<* Maps to set_sort_func *>
extern fn void ListBox.set_sort_func(&self, ListBoxSortFunc sort_func, void* user_data, glib::DestroyNotify destroy) @extern("gtk_list_box_set_sort_func");

<* Maps to unselect_all *>
extern fn void ListBox.unselect_all(&self) @extern("gtk_list_box_unselect_all");

<* Maps to unselect_row *>
extern fn void ListBox.unselect_row(&self, ListBoxRow* row) @extern("gtk_list_box_unselect_row");


<* Maps to GtkListBoxRow *>
distinct ListBoxRow = void*;

fn Widget* ListBoxRow.as_Widget(&self) => (Widget*)(self);


<* Maps to changed *>
extern fn void ListBoxRow.changed(&self) @extern("gtk_list_box_row_changed");

<* Maps to get_activatable *>
extern fn bool ListBoxRow.get_activatable(&self) @extern("gtk_list_box_row_get_activatable");

<* Maps to get_child *>
extern fn Widget* ListBoxRow.get_child(&self) @extern("gtk_list_box_row_get_child");

<* Maps to get_header *>
extern fn Widget* ListBoxRow.get_header(&self) @extern("gtk_list_box_row_get_header");

<* Maps to get_index *>
extern fn int ListBoxRow.get_index(&self) @extern("gtk_list_box_row_get_index");

<* Maps to get_selectable *>
extern fn bool ListBoxRow.get_selectable(&self) @extern("gtk_list_box_row_get_selectable");

<* Maps to is_selected *>
extern fn bool ListBoxRow.is_selected(&self) @extern("gtk_list_box_row_is_selected");

<* Maps to set_activatable *>
extern fn void ListBoxRow.set_activatable(&self, bool activatable) @extern("gtk_list_box_row_set_activatable");

<* Maps to set_child *>
extern fn void ListBoxRow.set_child(&self, Widget* child) @extern("gtk_list_box_row_set_child");

<* Maps to set_header *>
extern fn void ListBoxRow.set_header(&self, Widget* header) @extern("gtk_list_box_row_set_header");

<* Maps to set_selectable *>
extern fn void ListBoxRow.set_selectable(&self, bool selectable) @extern("gtk_list_box_row_set_selectable");


<* Maps to GtkListHeader *>
distinct ListHeader = void*;

fn gobject::Object* ListHeader.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_child *>
extern fn Widget* ListHeader.get_child(&self) @extern("gtk_list_header_get_child");

<* Maps to get_end *>
extern fn uint ListHeader.get_end(&self) @extern("gtk_list_header_get_end");

<* Maps to get_item *>
extern fn gobject::Object* ListHeader.get_item(&self) @extern("gtk_list_header_get_item");

<* Maps to get_n_items *>
extern fn uint ListHeader.get_n_items(&self) @extern("gtk_list_header_get_n_items");

<* Maps to get_start *>
extern fn uint ListHeader.get_start(&self) @extern("gtk_list_header_get_start");

<* Maps to set_child *>
extern fn void ListHeader.set_child(&self, Widget* child) @extern("gtk_list_header_set_child");


<* Maps to GtkListItem *>
distinct ListItem = void*;

fn gobject::Object* ListItem.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_accessible_description *>
extern fn ZString ListItem.get_accessible_description(&self) @extern("gtk_list_item_get_accessible_description");

<* Maps to get_accessible_label *>
extern fn ZString ListItem.get_accessible_label(&self) @extern("gtk_list_item_get_accessible_label");

<* Maps to get_activatable *>
extern fn bool ListItem.get_activatable(&self) @extern("gtk_list_item_get_activatable");

<* Maps to get_child *>
extern fn Widget* ListItem.get_child(&self) @extern("gtk_list_item_get_child");

<* Maps to get_focusable *>
extern fn bool ListItem.get_focusable(&self) @extern("gtk_list_item_get_focusable");

<* Maps to get_item *>
extern fn gobject::Object* ListItem.get_item(&self) @extern("gtk_list_item_get_item");

<* Maps to get_position *>
extern fn uint ListItem.get_position(&self) @extern("gtk_list_item_get_position");

<* Maps to get_selectable *>
extern fn bool ListItem.get_selectable(&self) @extern("gtk_list_item_get_selectable");

<* Maps to get_selected *>
extern fn bool ListItem.get_selected(&self) @extern("gtk_list_item_get_selected");

<* Maps to set_accessible_description *>
extern fn void ListItem.set_accessible_description(&self, ZString description) @extern("gtk_list_item_set_accessible_description");

<* Maps to set_accessible_label *>
extern fn void ListItem.set_accessible_label(&self, ZString label) @extern("gtk_list_item_set_accessible_label");

<* Maps to set_activatable *>
extern fn void ListItem.set_activatable(&self, bool activatable) @extern("gtk_list_item_set_activatable");

<* Maps to set_child *>
extern fn void ListItem.set_child(&self, Widget* child) @extern("gtk_list_item_set_child");

<* Maps to set_focusable *>
extern fn void ListItem.set_focusable(&self, bool focusable) @extern("gtk_list_item_set_focusable");

<* Maps to set_selectable *>
extern fn void ListItem.set_selectable(&self, bool selectable) @extern("gtk_list_item_set_selectable");


<* Maps to GtkListItemFactory *>
distinct ListItemFactory = void*;

fn gobject::Object* ListItemFactory.as_gobject_Object(&self) => (gobject::Object*)(self);



<* Maps to GtkListStore *>
distinct ListStore = void*;

fn gobject::Object* ListStore.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to append *>
extern fn void ListStore.append(&self, TreeIter* iter) @extern("gtk_list_store_append");

<* Maps to clear *>
extern fn void ListStore.clear(&self) @extern("gtk_list_store_clear");

<* Maps to insert *>
extern fn void ListStore.insert(&self, TreeIter* iter, int position) @extern("gtk_list_store_insert");

<* Maps to insert_after *>
extern fn void ListStore.insert_after(&self, TreeIter* iter, TreeIter* sibling) @extern("gtk_list_store_insert_after");

<* Maps to insert_before *>
extern fn void ListStore.insert_before(&self, TreeIter* iter, TreeIter* sibling) @extern("gtk_list_store_insert_before");

<* Maps to insert_with_values *>
extern fn void ListStore.insert_with_values(&self, TreeIter* iter, int position, any rest) @extern("gtk_list_store_insert_with_values");

<* Maps to insert_with_valuesv *>
extern fn void ListStore.insert_with_valuesv(&self, TreeIter* iter, int position, int columns, gobject::Value values, int n_values) @extern("gtk_list_store_insert_with_valuesv");

<* Maps to iter_is_valid *>
extern fn bool ListStore.iter_is_valid(&self, TreeIter* iter) @extern("gtk_list_store_iter_is_valid");

<* Maps to move_after *>
extern fn void ListStore.move_after(&self, TreeIter* iter, TreeIter* position) @extern("gtk_list_store_move_after");

<* Maps to move_before *>
extern fn void ListStore.move_before(&self, TreeIter* iter, TreeIter* position) @extern("gtk_list_store_move_before");

<* Maps to prepend *>
extern fn void ListStore.prepend(&self, TreeIter* iter) @extern("gtk_list_store_prepend");

<* Maps to remove *>
extern fn bool ListStore.remove(&self, TreeIter* iter) @extern("gtk_list_store_remove");

<* Maps to reorder *>
extern fn void ListStore.reorder(&self, int new_order) @extern("gtk_list_store_reorder");

<* Maps to set *>
extern fn void ListStore.set(&self, TreeIter* iter, any rest) @extern("gtk_list_store_set");

<* Maps to set_column_types *>
extern fn void ListStore.set_column_types(&self, int n_columns, usz types) @extern("gtk_list_store_set_column_types");

<* Maps to set_value *>
extern fn void ListStore.set_value(&self, TreeIter* iter, int column, gobject::Value* value) @extern("gtk_list_store_set_value");

<* Maps to set_valuesv *>
extern fn void ListStore.set_valuesv(&self, TreeIter* iter, int columns, gobject::Value values, int n_values) @extern("gtk_list_store_set_valuesv");

<* Maps to swap *>
extern fn void ListStore.swap(&self, TreeIter* a, TreeIter* b) @extern("gtk_list_store_swap");


<* Maps to GtkListView *>
distinct ListView = void*;

fn ListBase* ListView.as_ListBase(&self) => (ListBase*)(self);


<* Maps to get_enable_rubberband *>
extern fn bool ListView.get_enable_rubberband(&self) @extern("gtk_list_view_get_enable_rubberband");

<* Maps to get_factory *>
extern fn ListItemFactory* ListView.get_factory(&self) @extern("gtk_list_view_get_factory");

<* Maps to get_header_factory *>
extern fn ListItemFactory* ListView.get_header_factory(&self) @extern("gtk_list_view_get_header_factory");

<* Maps to get_model *>
extern fn SelectionModel* ListView.get_model(&self) @extern("gtk_list_view_get_model");

<* Maps to get_show_separators *>
extern fn bool ListView.get_show_separators(&self) @extern("gtk_list_view_get_show_separators");

<* Maps to get_single_click_activate *>
extern fn bool ListView.get_single_click_activate(&self) @extern("gtk_list_view_get_single_click_activate");

<* Maps to get_tab_behavior *>
extern fn ListTabBehavior ListView.get_tab_behavior(&self) @extern("gtk_list_view_get_tab_behavior");

<* Maps to scroll_to *>
extern fn void ListView.scroll_to(&self, uint pos, ListScrollFlags flags, ScrollInfo* scroll) @extern("gtk_list_view_scroll_to");

<* Maps to set_enable_rubberband *>
extern fn void ListView.set_enable_rubberband(&self, bool enable_rubberband) @extern("gtk_list_view_set_enable_rubberband");

<* Maps to set_factory *>
extern fn void ListView.set_factory(&self, ListItemFactory* factory) @extern("gtk_list_view_set_factory");

<* Maps to set_header_factory *>
extern fn void ListView.set_header_factory(&self, ListItemFactory* factory) @extern("gtk_list_view_set_header_factory");

<* Maps to set_model *>
extern fn void ListView.set_model(&self, SelectionModel* model) @extern("gtk_list_view_set_model");

<* Maps to set_show_separators *>
extern fn void ListView.set_show_separators(&self, bool show_separators) @extern("gtk_list_view_set_show_separators");

<* Maps to set_single_click_activate *>
extern fn void ListView.set_single_click_activate(&self, bool single_click_activate) @extern("gtk_list_view_set_single_click_activate");

<* Maps to set_tab_behavior *>
extern fn void ListView.set_tab_behavior(&self, ListTabBehavior tab_behavior) @extern("gtk_list_view_set_tab_behavior");


<* Maps to GtkLockButton *>
distinct LockButton = void*;

fn Button* LockButton.as_Button(&self) => (Button*)(self);


<* Maps to get_permission *>
extern fn gio::Permission* LockButton.get_permission(&self) @extern("gtk_lock_button_get_permission");

<* Maps to set_permission *>
extern fn void LockButton.set_permission(&self, gio::Permission* permission) @extern("gtk_lock_button_set_permission");


<* Maps to GtkMapListModel *>
distinct MapListModel = void*;

fn gobject::Object* MapListModel.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_model *>
extern fn gio::ListModel* MapListModel.get_model(&self) @extern("gtk_map_list_model_get_model");

<* Maps to has_map *>
extern fn bool MapListModel.has_map(&self) @extern("gtk_map_list_model_has_map");

<* Maps to set_map_func *>
extern fn void MapListModel.set_map_func(&self, MapListModelMapFunc map_func, void* user_data, glib::DestroyNotify user_destroy) @extern("gtk_map_list_model_set_map_func");

<* Maps to set_model *>
extern fn void MapListModel.set_model(&self, gio::ListModel* model) @extern("gtk_map_list_model_set_model");


<* Maps to GtkMediaControls *>
distinct MediaControls = void*;

fn Widget* MediaControls.as_Widget(&self) => (Widget*)(self);


<* Maps to get_media_stream *>
extern fn MediaStream* MediaControls.get_media_stream(&self) @extern("gtk_media_controls_get_media_stream");

<* Maps to set_media_stream *>
extern fn void MediaControls.set_media_stream(&self, MediaStream* stream) @extern("gtk_media_controls_set_media_stream");


<* Maps to GtkMediaFile *>
distinct MediaFile = void*;

fn MediaStream* MediaFile.as_MediaStream(&self) => (MediaStream*)(self);


<* Maps to clear *>
extern fn void MediaFile.clear(&self) @extern("gtk_media_file_clear");

<* Maps to get_file *>
extern fn gio::File* MediaFile.get_file(&self) @extern("gtk_media_file_get_file");

<* Maps to get_input_stream *>
extern fn gio::InputStream* MediaFile.get_input_stream(&self) @extern("gtk_media_file_get_input_stream");

<* Maps to set_file *>
extern fn void MediaFile.set_file(&self, gio::File* file) @extern("gtk_media_file_set_file");

<* Maps to set_filename *>
extern fn void MediaFile.set_filename(&self, ZString filename) @extern("gtk_media_file_set_filename");

<* Maps to set_input_stream *>
extern fn void MediaFile.set_input_stream(&self, gio::InputStream* stream) @extern("gtk_media_file_set_input_stream");

<* Maps to set_resource *>
extern fn void MediaFile.set_resource(&self, ZString resource_path) @extern("gtk_media_file_set_resource");


<* Maps to GtkMediaStream *>
distinct MediaStream = void*;

fn gobject::Object* MediaStream.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to ended *>
extern fn void MediaStream.ended(&self) @extern("gtk_media_stream_ended");

<* Maps to error *>
extern fn void MediaStream.error(&self, glib::Quark domain, int code, ZString format, any rest) @extern("gtk_media_stream_error");

<* Maps to gerror *>
extern fn void MediaStream.gerror(&self, glib::Error* error) @extern("gtk_media_stream_gerror");

<* Maps to get_duration *>
extern fn long MediaStream.get_duration(&self) @extern("gtk_media_stream_get_duration");

<* Maps to get_ended *>
extern fn bool MediaStream.get_ended(&self) @extern("gtk_media_stream_get_ended");

<* Maps to get_error *>
extern fn glib::Error* MediaStream.get_error(&self) @extern("gtk_media_stream_get_error");

<* Maps to get_loop *>
extern fn bool MediaStream.get_loop(&self) @extern("gtk_media_stream_get_loop");

<* Maps to get_muted *>
extern fn bool MediaStream.get_muted(&self) @extern("gtk_media_stream_get_muted");

<* Maps to get_playing *>
extern fn bool MediaStream.get_playing(&self) @extern("gtk_media_stream_get_playing");

<* Maps to get_timestamp *>
extern fn long MediaStream.get_timestamp(&self) @extern("gtk_media_stream_get_timestamp");

<* Maps to get_volume *>
extern fn double MediaStream.get_volume(&self) @extern("gtk_media_stream_get_volume");

<* Maps to has_audio *>
extern fn bool MediaStream.has_audio(&self) @extern("gtk_media_stream_has_audio");

<* Maps to has_video *>
extern fn bool MediaStream.has_video(&self) @extern("gtk_media_stream_has_video");

<* Maps to is_prepared *>
extern fn bool MediaStream.is_prepared(&self) @extern("gtk_media_stream_is_prepared");

<* Maps to is_seekable *>
extern fn bool MediaStream.is_seekable(&self) @extern("gtk_media_stream_is_seekable");

<* Maps to is_seeking *>
extern fn bool MediaStream.is_seeking(&self) @extern("gtk_media_stream_is_seeking");

<* Maps to pause *>
extern fn void MediaStream.pause(&self) @extern("gtk_media_stream_pause");

<* Maps to play *>
extern fn void MediaStream.play(&self) @extern("gtk_media_stream_play");

<* Maps to prepared *>
extern fn void MediaStream.prepared(&self, bool has_audio, bool has_video, bool seekable, long duration) @extern("gtk_media_stream_prepared");

<* Maps to realize *>
extern fn void MediaStream.realize(&self, gdk::Surface* surface) @extern("gtk_media_stream_realize");

<* Maps to seek *>
extern fn void MediaStream.seek(&self, long timestamp) @extern("gtk_media_stream_seek");

<* Maps to seek_failed *>
extern fn void MediaStream.seek_failed(&self) @extern("gtk_media_stream_seek_failed");

<* Maps to seek_success *>
extern fn void MediaStream.seek_success(&self) @extern("gtk_media_stream_seek_success");

<* Maps to set_loop *>
extern fn void MediaStream.set_loop(&self, bool loop) @extern("gtk_media_stream_set_loop");

<* Maps to set_muted *>
extern fn void MediaStream.set_muted(&self, bool muted) @extern("gtk_media_stream_set_muted");

<* Maps to set_playing *>
extern fn void MediaStream.set_playing(&self, bool playing) @extern("gtk_media_stream_set_playing");

<* Maps to set_volume *>
extern fn void MediaStream.set_volume(&self, double volume) @extern("gtk_media_stream_set_volume");

<* Maps to stream_ended *>
extern fn void MediaStream.stream_ended(&self) @extern("gtk_media_stream_stream_ended");

<* Maps to stream_prepared *>
extern fn void MediaStream.stream_prepared(&self, bool has_audio, bool has_video, bool seekable, long duration) @extern("gtk_media_stream_stream_prepared");

<* Maps to stream_unprepared *>
extern fn void MediaStream.stream_unprepared(&self) @extern("gtk_media_stream_stream_unprepared");

<* Maps to unprepared *>
extern fn void MediaStream.unprepared(&self) @extern("gtk_media_stream_unprepared");

<* Maps to unrealize *>
extern fn void MediaStream.unrealize(&self, gdk::Surface* surface) @extern("gtk_media_stream_unrealize");

<* Maps to update *>
extern fn void MediaStream.update(&self, long timestamp) @extern("gtk_media_stream_update");


<* Maps to GtkMenuButton *>
distinct MenuButton = void*;

fn Widget* MenuButton.as_Widget(&self) => (Widget*)(self);


<* Maps to get_active *>
extern fn bool MenuButton.get_active(&self) @extern("gtk_menu_button_get_active");

<* Maps to get_always_show_arrow *>
extern fn bool MenuButton.get_always_show_arrow(&self) @extern("gtk_menu_button_get_always_show_arrow");

<* Maps to get_can_shrink *>
extern fn bool MenuButton.get_can_shrink(&self) @extern("gtk_menu_button_get_can_shrink");

<* Maps to get_child *>
extern fn Widget* MenuButton.get_child(&self) @extern("gtk_menu_button_get_child");

<* Maps to get_direction *>
extern fn ArrowType MenuButton.get_direction(&self) @extern("gtk_menu_button_get_direction");

<* Maps to get_has_frame *>
extern fn bool MenuButton.get_has_frame(&self) @extern("gtk_menu_button_get_has_frame");

<* Maps to get_icon_name *>
extern fn ZString MenuButton.get_icon_name(&self) @extern("gtk_menu_button_get_icon_name");

<* Maps to get_label *>
extern fn ZString MenuButton.get_label(&self) @extern("gtk_menu_button_get_label");

<* Maps to get_menu_model *>
extern fn gio::MenuModel* MenuButton.get_menu_model(&self) @extern("gtk_menu_button_get_menu_model");

<* Maps to get_popover *>
extern fn Popover* MenuButton.get_popover(&self) @extern("gtk_menu_button_get_popover");

<* Maps to get_primary *>
extern fn bool MenuButton.get_primary(&self) @extern("gtk_menu_button_get_primary");

<* Maps to get_use_underline *>
extern fn bool MenuButton.get_use_underline(&self) @extern("gtk_menu_button_get_use_underline");

<* Maps to popdown *>
extern fn void MenuButton.popdown(&self) @extern("gtk_menu_button_popdown");

<* Maps to popup *>
extern fn void MenuButton.popup(&self) @extern("gtk_menu_button_popup");

<* Maps to set_active *>
extern fn void MenuButton.set_active(&self, bool active) @extern("gtk_menu_button_set_active");

<* Maps to set_always_show_arrow *>
extern fn void MenuButton.set_always_show_arrow(&self, bool always_show_arrow) @extern("gtk_menu_button_set_always_show_arrow");

<* Maps to set_can_shrink *>
extern fn void MenuButton.set_can_shrink(&self, bool can_shrink) @extern("gtk_menu_button_set_can_shrink");

<* Maps to set_child *>
extern fn void MenuButton.set_child(&self, Widget* child) @extern("gtk_menu_button_set_child");

<* Maps to set_create_popup_func *>
extern fn void MenuButton.set_create_popup_func(&self, MenuButtonCreatePopupFunc func, void* user_data, glib::DestroyNotify destroy_notify) @extern("gtk_menu_button_set_create_popup_func");

<* Maps to set_direction *>
extern fn void MenuButton.set_direction(&self, ArrowType direction) @extern("gtk_menu_button_set_direction");

<* Maps to set_has_frame *>
extern fn void MenuButton.set_has_frame(&self, bool has_frame) @extern("gtk_menu_button_set_has_frame");

<* Maps to set_icon_name *>
extern fn void MenuButton.set_icon_name(&self, ZString icon_name) @extern("gtk_menu_button_set_icon_name");

<* Maps to set_label *>
extern fn void MenuButton.set_label(&self, ZString label) @extern("gtk_menu_button_set_label");

<* Maps to set_menu_model *>
extern fn void MenuButton.set_menu_model(&self, gio::MenuModel* menu_model) @extern("gtk_menu_button_set_menu_model");

<* Maps to set_popover *>
extern fn void MenuButton.set_popover(&self, Widget* popover) @extern("gtk_menu_button_set_popover");

<* Maps to set_primary *>
extern fn void MenuButton.set_primary(&self, bool primary) @extern("gtk_menu_button_set_primary");

<* Maps to set_use_underline *>
extern fn void MenuButton.set_use_underline(&self, bool use_underline) @extern("gtk_menu_button_set_use_underline");


<* Maps to GtkMessageDialog *>
distinct MessageDialog = void*;

fn Dialog* MessageDialog.as_Dialog(&self) => (Dialog*)(self);


<* Maps to format_secondary_markup *>
extern fn void MessageDialog.format_secondary_markup(&self, ZString message_format, any rest) @extern("gtk_message_dialog_format_secondary_markup");

<* Maps to format_secondary_text *>
extern fn void MessageDialog.format_secondary_text(&self, ZString message_format, any rest) @extern("gtk_message_dialog_format_secondary_text");

<* Maps to get_message_area *>
extern fn Widget* MessageDialog.get_message_area(&self) @extern("gtk_message_dialog_get_message_area");

<* Maps to set_markup *>
extern fn void MessageDialog.set_markup(&self, ZString str) @extern("gtk_message_dialog_set_markup");


<* Maps to GtkMnemonicAction *>
distinct MnemonicAction = void*;

fn ShortcutAction* MnemonicAction.as_ShortcutAction(&self) => (ShortcutAction*)(self);



<* Maps to GtkMnemonicTrigger *>
distinct MnemonicTrigger = void*;

fn ShortcutTrigger* MnemonicTrigger.as_ShortcutTrigger(&self) => (ShortcutTrigger*)(self);


<* Maps to get_keyval *>
extern fn uint MnemonicTrigger.get_keyval(&self) @extern("gtk_mnemonic_trigger_get_keyval");


<* Maps to GtkMountOperation *>
distinct MountOperation = void*;

fn gio::MountOperation* MountOperation.as_gio_MountOperation(&self) => (gio::MountOperation*)(self);


<* Maps to get_display *>
extern fn gdk::Display* MountOperation.get_display(&self) @extern("gtk_mount_operation_get_display");

<* Maps to get_parent *>
extern fn Window* MountOperation.get_parent(&self) @extern("gtk_mount_operation_get_parent");

<* Maps to is_showing *>
extern fn bool MountOperation.is_showing(&self) @extern("gtk_mount_operation_is_showing");

<* Maps to set_display *>
extern fn void MountOperation.set_display(&self, gdk::Display* display) @extern("gtk_mount_operation_set_display");

<* Maps to set_parent *>
extern fn void MountOperation.set_parent(&self, Window* parent) @extern("gtk_mount_operation_set_parent");


<* Maps to GtkMultiFilter *>
distinct MultiFilter = void*;

fn Filter* MultiFilter.as_Filter(&self) => (Filter*)(self);


<* Maps to append *>
extern fn void MultiFilter.append(&self, Filter* filter) @extern("gtk_multi_filter_append");

<* Maps to remove *>
extern fn void MultiFilter.remove(&self, uint position) @extern("gtk_multi_filter_remove");


<* Maps to GtkMultiSelection *>
distinct MultiSelection = void*;

fn gobject::Object* MultiSelection.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_model *>
extern fn gio::ListModel* MultiSelection.get_model(&self) @extern("gtk_multi_selection_get_model");

<* Maps to set_model *>
extern fn void MultiSelection.set_model(&self, gio::ListModel* model) @extern("gtk_multi_selection_set_model");


<* Maps to GtkMultiSorter *>
distinct MultiSorter = void*;

fn Sorter* MultiSorter.as_Sorter(&self) => (Sorter*)(self);


<* Maps to append *>
extern fn void MultiSorter.append(&self, Sorter* sorter) @extern("gtk_multi_sorter_append");

<* Maps to remove *>
extern fn void MultiSorter.remove(&self, uint position) @extern("gtk_multi_sorter_remove");


<* Maps to GtkNamedAction *>
distinct NamedAction = void*;

fn ShortcutAction* NamedAction.as_ShortcutAction(&self) => (ShortcutAction*)(self);


<* Maps to get_action_name *>
extern fn ZString NamedAction.get_action_name(&self) @extern("gtk_named_action_get_action_name");


<* Maps to GtkNativeDialog *>
distinct NativeDialog = void*;

fn gobject::Object* NativeDialog.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to destroy *>
extern fn void NativeDialog.destroy(&self) @extern("gtk_native_dialog_destroy");

<* Maps to get_modal *>
extern fn bool NativeDialog.get_modal(&self) @extern("gtk_native_dialog_get_modal");

<* Maps to get_title *>
extern fn ZString NativeDialog.get_title(&self) @extern("gtk_native_dialog_get_title");

<* Maps to get_transient_for *>
extern fn Window* NativeDialog.get_transient_for(&self) @extern("gtk_native_dialog_get_transient_for");

<* Maps to get_visible *>
extern fn bool NativeDialog.get_visible(&self) @extern("gtk_native_dialog_get_visible");

<* Maps to hide *>
extern fn void NativeDialog.hide(&self) @extern("gtk_native_dialog_hide");

<* Maps to set_modal *>
extern fn void NativeDialog.set_modal(&self, bool modal) @extern("gtk_native_dialog_set_modal");

<* Maps to set_title *>
extern fn void NativeDialog.set_title(&self, ZString title) @extern("gtk_native_dialog_set_title");

<* Maps to set_transient_for *>
extern fn void NativeDialog.set_transient_for(&self, Window* parent) @extern("gtk_native_dialog_set_transient_for");

<* Maps to show *>
extern fn void NativeDialog.show(&self) @extern("gtk_native_dialog_show");


<* Maps to GtkNeverTrigger *>
distinct NeverTrigger = void*;

fn ShortcutTrigger* NeverTrigger.as_ShortcutTrigger(&self) => (ShortcutTrigger*)(self);



<* Maps to GtkNoSelection *>
distinct NoSelection = void*;

fn gobject::Object* NoSelection.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_model *>
extern fn gio::ListModel* NoSelection.get_model(&self) @extern("gtk_no_selection_get_model");

<* Maps to set_model *>
extern fn void NoSelection.set_model(&self, gio::ListModel* model) @extern("gtk_no_selection_set_model");


<* Maps to GtkNotebook *>
distinct Notebook = void*;

fn Widget* Notebook.as_Widget(&self) => (Widget*)(self);


<* Maps to append_page *>
extern fn int Notebook.append_page(&self, Widget* child, Widget* tab_label) @extern("gtk_notebook_append_page");

<* Maps to append_page_menu *>
extern fn int Notebook.append_page_menu(&self, Widget* child, Widget* tab_label, Widget* menu_label) @extern("gtk_notebook_append_page_menu");

<* Maps to detach_tab *>
extern fn void Notebook.detach_tab(&self, Widget* child) @extern("gtk_notebook_detach_tab");

<* Maps to get_action_widget *>
extern fn Widget* Notebook.get_action_widget(&self, PackType pack_type) @extern("gtk_notebook_get_action_widget");

<* Maps to get_current_page *>
extern fn int Notebook.get_current_page(&self) @extern("gtk_notebook_get_current_page");

<* Maps to get_group_name *>
extern fn ZString Notebook.get_group_name(&self) @extern("gtk_notebook_get_group_name");

<* Maps to get_menu_label *>
extern fn Widget* Notebook.get_menu_label(&self, Widget* child) @extern("gtk_notebook_get_menu_label");

<* Maps to get_menu_label_text *>
extern fn ZString Notebook.get_menu_label_text(&self, Widget* child) @extern("gtk_notebook_get_menu_label_text");

<* Maps to get_n_pages *>
extern fn int Notebook.get_n_pages(&self) @extern("gtk_notebook_get_n_pages");

<* Maps to get_nth_page *>
extern fn Widget* Notebook.get_nth_page(&self, int page_num) @extern("gtk_notebook_get_nth_page");

<* Maps to get_page *>
extern fn NotebookPage* Notebook.get_page(&self, Widget* child) @extern("gtk_notebook_get_page");

<* Maps to get_pages *>
extern fn gio::ListModel* Notebook.get_pages(&self) @extern("gtk_notebook_get_pages");

<* Maps to get_scrollable *>
extern fn bool Notebook.get_scrollable(&self) @extern("gtk_notebook_get_scrollable");

<* Maps to get_show_border *>
extern fn bool Notebook.get_show_border(&self) @extern("gtk_notebook_get_show_border");

<* Maps to get_show_tabs *>
extern fn bool Notebook.get_show_tabs(&self) @extern("gtk_notebook_get_show_tabs");

<* Maps to get_tab_detachable *>
extern fn bool Notebook.get_tab_detachable(&self, Widget* child) @extern("gtk_notebook_get_tab_detachable");

<* Maps to get_tab_label *>
extern fn Widget* Notebook.get_tab_label(&self, Widget* child) @extern("gtk_notebook_get_tab_label");

<* Maps to get_tab_label_text *>
extern fn ZString Notebook.get_tab_label_text(&self, Widget* child) @extern("gtk_notebook_get_tab_label_text");

<* Maps to get_tab_pos *>
extern fn PositionType Notebook.get_tab_pos(&self) @extern("gtk_notebook_get_tab_pos");

<* Maps to get_tab_reorderable *>
extern fn bool Notebook.get_tab_reorderable(&self, Widget* child) @extern("gtk_notebook_get_tab_reorderable");

<* Maps to insert_page *>
extern fn int Notebook.insert_page(&self, Widget* child, Widget* tab_label, int position) @extern("gtk_notebook_insert_page");

<* Maps to insert_page_menu *>
extern fn int Notebook.insert_page_menu(&self, Widget* child, Widget* tab_label, Widget* menu_label, int position) @extern("gtk_notebook_insert_page_menu");

<* Maps to next_page *>
extern fn void Notebook.next_page(&self) @extern("gtk_notebook_next_page");

<* Maps to page_num *>
extern fn int Notebook.page_num(&self, Widget* child) @extern("gtk_notebook_page_num");

<* Maps to popup_disable *>
extern fn void Notebook.popup_disable(&self) @extern("gtk_notebook_popup_disable");

<* Maps to popup_enable *>
extern fn void Notebook.popup_enable(&self) @extern("gtk_notebook_popup_enable");

<* Maps to prepend_page *>
extern fn int Notebook.prepend_page(&self, Widget* child, Widget* tab_label) @extern("gtk_notebook_prepend_page");

<* Maps to prepend_page_menu *>
extern fn int Notebook.prepend_page_menu(&self, Widget* child, Widget* tab_label, Widget* menu_label) @extern("gtk_notebook_prepend_page_menu");

<* Maps to prev_page *>
extern fn void Notebook.prev_page(&self) @extern("gtk_notebook_prev_page");

<* Maps to remove_page *>
extern fn void Notebook.remove_page(&self, int page_num) @extern("gtk_notebook_remove_page");

<* Maps to reorder_child *>
extern fn void Notebook.reorder_child(&self, Widget* child, int position) @extern("gtk_notebook_reorder_child");

<* Maps to set_action_widget *>
extern fn void Notebook.set_action_widget(&self, Widget* widget, PackType pack_type) @extern("gtk_notebook_set_action_widget");

<* Maps to set_current_page *>
extern fn void Notebook.set_current_page(&self, int page_num) @extern("gtk_notebook_set_current_page");

<* Maps to set_group_name *>
extern fn void Notebook.set_group_name(&self, ZString group_name) @extern("gtk_notebook_set_group_name");

<* Maps to set_menu_label *>
extern fn void Notebook.set_menu_label(&self, Widget* child, Widget* menu_label) @extern("gtk_notebook_set_menu_label");

<* Maps to set_menu_label_text *>
extern fn void Notebook.set_menu_label_text(&self, Widget* child, ZString menu_text) @extern("gtk_notebook_set_menu_label_text");

<* Maps to set_scrollable *>
extern fn void Notebook.set_scrollable(&self, bool scrollable) @extern("gtk_notebook_set_scrollable");

<* Maps to set_show_border *>
extern fn void Notebook.set_show_border(&self, bool show_border) @extern("gtk_notebook_set_show_border");

<* Maps to set_show_tabs *>
extern fn void Notebook.set_show_tabs(&self, bool show_tabs) @extern("gtk_notebook_set_show_tabs");

<* Maps to set_tab_detachable *>
extern fn void Notebook.set_tab_detachable(&self, Widget* child, bool detachable) @extern("gtk_notebook_set_tab_detachable");

<* Maps to set_tab_label *>
extern fn void Notebook.set_tab_label(&self, Widget* child, Widget* tab_label) @extern("gtk_notebook_set_tab_label");

<* Maps to set_tab_label_text *>
extern fn void Notebook.set_tab_label_text(&self, Widget* child, ZString tab_text) @extern("gtk_notebook_set_tab_label_text");

<* Maps to set_tab_pos *>
extern fn void Notebook.set_tab_pos(&self, PositionType pos) @extern("gtk_notebook_set_tab_pos");

<* Maps to set_tab_reorderable *>
extern fn void Notebook.set_tab_reorderable(&self, Widget* child, bool reorderable) @extern("gtk_notebook_set_tab_reorderable");


<* Maps to GtkNotebookPage *>
distinct NotebookPage = void*;

fn gobject::Object* NotebookPage.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_child *>
extern fn Widget* NotebookPage.get_child(&self) @extern("gtk_notebook_page_get_child");


<* Maps to GtkNothingAction *>
distinct NothingAction = void*;

fn ShortcutAction* NothingAction.as_ShortcutAction(&self) => (ShortcutAction*)(self);



<* Maps to GtkNumericSorter *>
distinct NumericSorter = void*;

fn Sorter* NumericSorter.as_Sorter(&self) => (Sorter*)(self);


<* Maps to get_expression *>
extern fn Expression* NumericSorter.get_expression(&self) @extern("gtk_numeric_sorter_get_expression");

<* Maps to get_sort_order *>
extern fn SortType NumericSorter.get_sort_order(&self) @extern("gtk_numeric_sorter_get_sort_order");

<* Maps to set_expression *>
extern fn void NumericSorter.set_expression(&self, Expression* expression) @extern("gtk_numeric_sorter_set_expression");

<* Maps to set_sort_order *>
extern fn void NumericSorter.set_sort_order(&self, SortType sort_order) @extern("gtk_numeric_sorter_set_sort_order");


<* Maps to GtkObjectExpression *>
distinct ObjectExpression = void*;

fn Expression* ObjectExpression.as_Expression(&self) => (Expression*)(self);


<* Maps to get_object *>
extern fn gobject::Object* ObjectExpression.get_object(&self) @extern("gtk_object_expression_get_object");


<* Maps to GtkOverlay *>
distinct Overlay = void*;

fn Widget* Overlay.as_Widget(&self) => (Widget*)(self);


<* Maps to add_overlay *>
extern fn void Overlay.add_overlay(&self, Widget* widget) @extern("gtk_overlay_add_overlay");

<* Maps to get_child *>
extern fn Widget* Overlay.get_child(&self) @extern("gtk_overlay_get_child");

<* Maps to get_clip_overlay *>
extern fn bool Overlay.get_clip_overlay(&self, Widget* widget) @extern("gtk_overlay_get_clip_overlay");

<* Maps to get_measure_overlay *>
extern fn bool Overlay.get_measure_overlay(&self, Widget* widget) @extern("gtk_overlay_get_measure_overlay");

<* Maps to remove_overlay *>
extern fn void Overlay.remove_overlay(&self, Widget* widget) @extern("gtk_overlay_remove_overlay");

<* Maps to set_child *>
extern fn void Overlay.set_child(&self, Widget* child) @extern("gtk_overlay_set_child");

<* Maps to set_clip_overlay *>
extern fn void Overlay.set_clip_overlay(&self, Widget* widget, bool clip_overlay) @extern("gtk_overlay_set_clip_overlay");

<* Maps to set_measure_overlay *>
extern fn void Overlay.set_measure_overlay(&self, Widget* widget, bool measure) @extern("gtk_overlay_set_measure_overlay");


<* Maps to GtkOverlayLayout *>
distinct OverlayLayout = void*;

fn LayoutManager* OverlayLayout.as_LayoutManager(&self) => (LayoutManager*)(self);



<* Maps to GtkOverlayLayoutChild *>
distinct OverlayLayoutChild = void*;

fn LayoutChild* OverlayLayoutChild.as_LayoutChild(&self) => (LayoutChild*)(self);


<* Maps to get_clip_overlay *>
extern fn bool OverlayLayoutChild.get_clip_overlay(&self) @extern("gtk_overlay_layout_child_get_clip_overlay");

<* Maps to get_measure *>
extern fn bool OverlayLayoutChild.get_measure(&self) @extern("gtk_overlay_layout_child_get_measure");

<* Maps to set_clip_overlay *>
extern fn void OverlayLayoutChild.set_clip_overlay(&self, bool clip_overlay) @extern("gtk_overlay_layout_child_set_clip_overlay");

<* Maps to set_measure *>
extern fn void OverlayLayoutChild.set_measure(&self, bool measure) @extern("gtk_overlay_layout_child_set_measure");


<* Maps to GtkPadController *>
distinct PadController = void*;

fn EventController* PadController.as_EventController(&self) => (EventController*)(self);


<* Maps to set_action *>
extern fn void PadController.set_action(&self, PadActionType type, int index, int mode, ZString label, ZString action_name) @extern("gtk_pad_controller_set_action");

<* Maps to set_action_entries *>
extern fn void PadController.set_action_entries(&self, PadActionEntry entries, int n_entries) @extern("gtk_pad_controller_set_action_entries");


<* Maps to GtkPageSetup *>
distinct PageSetup = void*;

fn gobject::Object* PageSetup.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to copy *>
extern fn PageSetup* PageSetup.copy(&self) @extern("gtk_page_setup_copy");

<* Maps to get_bottom_margin *>
extern fn double PageSetup.get_bottom_margin(&self, Unit unit) @extern("gtk_page_setup_get_bottom_margin");

<* Maps to get_left_margin *>
extern fn double PageSetup.get_left_margin(&self, Unit unit) @extern("gtk_page_setup_get_left_margin");

<* Maps to get_orientation *>
extern fn PageOrientation PageSetup.get_orientation(&self) @extern("gtk_page_setup_get_orientation");

<* Maps to get_page_height *>
extern fn double PageSetup.get_page_height(&self, Unit unit) @extern("gtk_page_setup_get_page_height");

<* Maps to get_page_width *>
extern fn double PageSetup.get_page_width(&self, Unit unit) @extern("gtk_page_setup_get_page_width");

<* Maps to get_paper_height *>
extern fn double PageSetup.get_paper_height(&self, Unit unit) @extern("gtk_page_setup_get_paper_height");

<* Maps to get_paper_size *>
extern fn PaperSize* PageSetup.get_paper_size(&self) @extern("gtk_page_setup_get_paper_size");

<* Maps to get_paper_width *>
extern fn double PageSetup.get_paper_width(&self, Unit unit) @extern("gtk_page_setup_get_paper_width");

<* Maps to get_right_margin *>
extern fn double PageSetup.get_right_margin(&self, Unit unit) @extern("gtk_page_setup_get_right_margin");

<* Maps to get_top_margin *>
extern fn double PageSetup.get_top_margin(&self, Unit unit) @extern("gtk_page_setup_get_top_margin");

<* Maps to load_file *>
extern fn bool PageSetup.load_file(&self, ZString file_name) @extern("gtk_page_setup_load_file");

<* Maps to load_key_file *>
extern fn bool PageSetup.load_key_file(&self, glib::KeyFile* key_file, ZString group_name) @extern("gtk_page_setup_load_key_file");

<* Maps to set_bottom_margin *>
extern fn void PageSetup.set_bottom_margin(&self, double margin, Unit unit) @extern("gtk_page_setup_set_bottom_margin");

<* Maps to set_left_margin *>
extern fn void PageSetup.set_left_margin(&self, double margin, Unit unit) @extern("gtk_page_setup_set_left_margin");

<* Maps to set_orientation *>
extern fn void PageSetup.set_orientation(&self, PageOrientation orientation) @extern("gtk_page_setup_set_orientation");

<* Maps to set_paper_size *>
extern fn void PageSetup.set_paper_size(&self, PaperSize* size) @extern("gtk_page_setup_set_paper_size");

<* Maps to set_paper_size_and_default_margins *>
extern fn void PageSetup.set_paper_size_and_default_margins(&self, PaperSize* size) @extern("gtk_page_setup_set_paper_size_and_default_margins");

<* Maps to set_right_margin *>
extern fn void PageSetup.set_right_margin(&self, double margin, Unit unit) @extern("gtk_page_setup_set_right_margin");

<* Maps to set_top_margin *>
extern fn void PageSetup.set_top_margin(&self, double margin, Unit unit) @extern("gtk_page_setup_set_top_margin");

<* Maps to to_file *>
extern fn bool PageSetup.to_file(&self, ZString file_name) @extern("gtk_page_setup_to_file");

<* Maps to to_gvariant *>
extern fn glib::Variant* PageSetup.to_gvariant(&self) @extern("gtk_page_setup_to_gvariant");

<* Maps to to_key_file *>
extern fn void PageSetup.to_key_file(&self, glib::KeyFile* key_file, ZString group_name) @extern("gtk_page_setup_to_key_file");


<* Maps to GtkPageSetupUnixDialog *>
distinct PageSetupUnixDialog = void*;

fn Dialog* PageSetupUnixDialog.as_Dialog(&self) => (Dialog*)(self);


<* Maps to get_page_setup *>
extern fn PageSetup* PageSetupUnixDialog.get_page_setup(&self) @extern("gtk_page_setup_unix_dialog_get_page_setup");

<* Maps to get_print_settings *>
extern fn PrintSettings* PageSetupUnixDialog.get_print_settings(&self) @extern("gtk_page_setup_unix_dialog_get_print_settings");

<* Maps to set_page_setup *>
extern fn void PageSetupUnixDialog.set_page_setup(&self, PageSetup* page_setup) @extern("gtk_page_setup_unix_dialog_set_page_setup");

<* Maps to set_print_settings *>
extern fn void PageSetupUnixDialog.set_print_settings(&self, PrintSettings* print_settings) @extern("gtk_page_setup_unix_dialog_set_print_settings");


<* Maps to GtkPaned *>
distinct Paned = void*;

fn Widget* Paned.as_Widget(&self) => (Widget*)(self);


<* Maps to get_end_child *>
extern fn Widget* Paned.get_end_child(&self) @extern("gtk_paned_get_end_child");

<* Maps to get_position *>
extern fn int Paned.get_position(&self) @extern("gtk_paned_get_position");

<* Maps to get_resize_end_child *>
extern fn bool Paned.get_resize_end_child(&self) @extern("gtk_paned_get_resize_end_child");

<* Maps to get_resize_start_child *>
extern fn bool Paned.get_resize_start_child(&self) @extern("gtk_paned_get_resize_start_child");

<* Maps to get_shrink_end_child *>
extern fn bool Paned.get_shrink_end_child(&self) @extern("gtk_paned_get_shrink_end_child");

<* Maps to get_shrink_start_child *>
extern fn bool Paned.get_shrink_start_child(&self) @extern("gtk_paned_get_shrink_start_child");

<* Maps to get_start_child *>
extern fn Widget* Paned.get_start_child(&self) @extern("gtk_paned_get_start_child");

<* Maps to get_wide_handle *>
extern fn bool Paned.get_wide_handle(&self) @extern("gtk_paned_get_wide_handle");

<* Maps to set_end_child *>
extern fn void Paned.set_end_child(&self, Widget* child) @extern("gtk_paned_set_end_child");

<* Maps to set_position *>
extern fn void Paned.set_position(&self, int position) @extern("gtk_paned_set_position");

<* Maps to set_resize_end_child *>
extern fn void Paned.set_resize_end_child(&self, bool resize) @extern("gtk_paned_set_resize_end_child");

<* Maps to set_resize_start_child *>
extern fn void Paned.set_resize_start_child(&self, bool resize) @extern("gtk_paned_set_resize_start_child");

<* Maps to set_shrink_end_child *>
extern fn void Paned.set_shrink_end_child(&self, bool resize) @extern("gtk_paned_set_shrink_end_child");

<* Maps to set_shrink_start_child *>
extern fn void Paned.set_shrink_start_child(&self, bool resize) @extern("gtk_paned_set_shrink_start_child");

<* Maps to set_start_child *>
extern fn void Paned.set_start_child(&self, Widget* child) @extern("gtk_paned_set_start_child");

<* Maps to set_wide_handle *>
extern fn void Paned.set_wide_handle(&self, bool wide) @extern("gtk_paned_set_wide_handle");


<* Maps to GtkParamSpecExpression *>
distinct ParamSpecExpression = void*;

fn gobject::ParamSpec* ParamSpecExpression.as_gobject_ParamSpec(&self) => (gobject::ParamSpec*)(self);



<* Maps to GtkPasswordEntry *>
distinct PasswordEntry = void*;

fn Widget* PasswordEntry.as_Widget(&self) => (Widget*)(self);


<* Maps to get_extra_menu *>
extern fn gio::MenuModel* PasswordEntry.get_extra_menu(&self) @extern("gtk_password_entry_get_extra_menu");

<* Maps to get_show_peek_icon *>
extern fn bool PasswordEntry.get_show_peek_icon(&self) @extern("gtk_password_entry_get_show_peek_icon");

<* Maps to set_extra_menu *>
extern fn void PasswordEntry.set_extra_menu(&self, gio::MenuModel* model) @extern("gtk_password_entry_set_extra_menu");

<* Maps to set_show_peek_icon *>
extern fn void PasswordEntry.set_show_peek_icon(&self, bool show_peek_icon) @extern("gtk_password_entry_set_show_peek_icon");


<* Maps to GtkPasswordEntryBuffer *>
distinct PasswordEntryBuffer = void*;

fn EntryBuffer* PasswordEntryBuffer.as_EntryBuffer(&self) => (EntryBuffer*)(self);



<* Maps to GtkPicture *>
distinct Picture = void*;

fn Widget* Picture.as_Widget(&self) => (Widget*)(self);


<* Maps to get_alternative_text *>
extern fn ZString Picture.get_alternative_text(&self) @extern("gtk_picture_get_alternative_text");

<* Maps to get_can_shrink *>
extern fn bool Picture.get_can_shrink(&self) @extern("gtk_picture_get_can_shrink");

<* Maps to get_content_fit *>
extern fn ContentFit Picture.get_content_fit(&self) @extern("gtk_picture_get_content_fit");

<* Maps to get_file *>
extern fn gio::File* Picture.get_file(&self) @extern("gtk_picture_get_file");

<* Maps to get_keep_aspect_ratio *>
extern fn bool Picture.get_keep_aspect_ratio(&self) @extern("gtk_picture_get_keep_aspect_ratio");

<* Maps to get_paintable *>
extern fn gdk::Paintable* Picture.get_paintable(&self) @extern("gtk_picture_get_paintable");

<* Maps to set_alternative_text *>
extern fn void Picture.set_alternative_text(&self, ZString alternative_text) @extern("gtk_picture_set_alternative_text");

<* Maps to set_can_shrink *>
extern fn void Picture.set_can_shrink(&self, bool can_shrink) @extern("gtk_picture_set_can_shrink");

<* Maps to set_content_fit *>
extern fn void Picture.set_content_fit(&self, ContentFit content_fit) @extern("gtk_picture_set_content_fit");

<* Maps to set_file *>
extern fn void Picture.set_file(&self, gio::File* file) @extern("gtk_picture_set_file");

<* Maps to set_filename *>
extern fn void Picture.set_filename(&self, ZString filename) @extern("gtk_picture_set_filename");

<* Maps to set_keep_aspect_ratio *>
extern fn void Picture.set_keep_aspect_ratio(&self, bool keep_aspect_ratio) @extern("gtk_picture_set_keep_aspect_ratio");

<* Maps to set_paintable *>
extern fn void Picture.set_paintable(&self, gdk::Paintable* paintable) @extern("gtk_picture_set_paintable");

<* Maps to set_pixbuf *>
extern fn void Picture.set_pixbuf(&self, gdkpixbuf::Pixbuf* pixbuf) @extern("gtk_picture_set_pixbuf");

<* Maps to set_resource *>
extern fn void Picture.set_resource(&self, ZString resource_path) @extern("gtk_picture_set_resource");


<* Maps to GtkPopover *>
distinct Popover = void*;

fn Widget* Popover.as_Widget(&self) => (Widget*)(self);


<* Maps to get_autohide *>
extern fn bool Popover.get_autohide(&self) @extern("gtk_popover_get_autohide");

<* Maps to get_cascade_popdown *>
extern fn bool Popover.get_cascade_popdown(&self) @extern("gtk_popover_get_cascade_popdown");

<* Maps to get_child *>
extern fn Widget* Popover.get_child(&self) @extern("gtk_popover_get_child");

<* Maps to get_has_arrow *>
extern fn bool Popover.get_has_arrow(&self) @extern("gtk_popover_get_has_arrow");

<* Maps to get_mnemonics_visible *>
extern fn bool Popover.get_mnemonics_visible(&self) @extern("gtk_popover_get_mnemonics_visible");

<* Maps to get_offset *>
extern fn void Popover.get_offset(&self, int* x_offset, int* y_offset) @extern("gtk_popover_get_offset");

<* Maps to get_pointing_to *>
extern fn bool Popover.get_pointing_to(&self, gdk::Rectangle* rect) @extern("gtk_popover_get_pointing_to");

<* Maps to get_position *>
extern fn PositionType Popover.get_position(&self) @extern("gtk_popover_get_position");

<* Maps to popdown *>
extern fn void Popover.popdown(&self) @extern("gtk_popover_popdown");

<* Maps to popup *>
extern fn void Popover.popup(&self) @extern("gtk_popover_popup");

<* Maps to present *>
extern fn void Popover.present(&self) @extern("gtk_popover_present");

<* Maps to set_autohide *>
extern fn void Popover.set_autohide(&self, bool autohide) @extern("gtk_popover_set_autohide");

<* Maps to set_cascade_popdown *>
extern fn void Popover.set_cascade_popdown(&self, bool cascade_popdown) @extern("gtk_popover_set_cascade_popdown");

<* Maps to set_child *>
extern fn void Popover.set_child(&self, Widget* child) @extern("gtk_popover_set_child");

<* Maps to set_default_widget *>
extern fn void Popover.set_default_widget(&self, Widget* widget) @extern("gtk_popover_set_default_widget");

<* Maps to set_has_arrow *>
extern fn void Popover.set_has_arrow(&self, bool has_arrow) @extern("gtk_popover_set_has_arrow");

<* Maps to set_mnemonics_visible *>
extern fn void Popover.set_mnemonics_visible(&self, bool mnemonics_visible) @extern("gtk_popover_set_mnemonics_visible");

<* Maps to set_offset *>
extern fn void Popover.set_offset(&self, int x_offset, int y_offset) @extern("gtk_popover_set_offset");

<* Maps to set_pointing_to *>
extern fn void Popover.set_pointing_to(&self, gdk::Rectangle* rect) @extern("gtk_popover_set_pointing_to");

<* Maps to set_position *>
extern fn void Popover.set_position(&self, PositionType position) @extern("gtk_popover_set_position");


<* Maps to GtkPopoverMenu *>
distinct PopoverMenu = void*;

fn Popover* PopoverMenu.as_Popover(&self) => (Popover*)(self);


<* Maps to add_child *>
extern fn bool PopoverMenu.add_child(&self, Widget* child, ZString id) @extern("gtk_popover_menu_add_child");

<* Maps to get_flags *>
extern fn PopoverMenuFlags PopoverMenu.get_flags(&self) @extern("gtk_popover_menu_get_flags");

<* Maps to get_menu_model *>
extern fn gio::MenuModel* PopoverMenu.get_menu_model(&self) @extern("gtk_popover_menu_get_menu_model");

<* Maps to remove_child *>
extern fn bool PopoverMenu.remove_child(&self, Widget* child) @extern("gtk_popover_menu_remove_child");

<* Maps to set_flags *>
extern fn void PopoverMenu.set_flags(&self, PopoverMenuFlags flags) @extern("gtk_popover_menu_set_flags");

<* Maps to set_menu_model *>
extern fn void PopoverMenu.set_menu_model(&self, gio::MenuModel* model) @extern("gtk_popover_menu_set_menu_model");


<* Maps to GtkPopoverMenuBar *>
distinct PopoverMenuBar = void*;

fn Widget* PopoverMenuBar.as_Widget(&self) => (Widget*)(self);


<* Maps to add_child *>
extern fn bool PopoverMenuBar.add_child(&self, Widget* child, ZString id) @extern("gtk_popover_menu_bar_add_child");

<* Maps to get_menu_model *>
extern fn gio::MenuModel* PopoverMenuBar.get_menu_model(&self) @extern("gtk_popover_menu_bar_get_menu_model");

<* Maps to remove_child *>
extern fn bool PopoverMenuBar.remove_child(&self, Widget* child) @extern("gtk_popover_menu_bar_remove_child");

<* Maps to set_menu_model *>
extern fn void PopoverMenuBar.set_menu_model(&self, gio::MenuModel* model) @extern("gtk_popover_menu_bar_set_menu_model");


<* Maps to GtkPrintContext *>
distinct PrintContext = void*;

fn gobject::Object* PrintContext.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to create_pango_context *>
extern fn pango::Context* PrintContext.create_pango_context(&self) @extern("gtk_print_context_create_pango_context");

<* Maps to create_pango_layout *>
extern fn pango::Layout* PrintContext.create_pango_layout(&self) @extern("gtk_print_context_create_pango_layout");

<* Maps to get_cairo_context *>
extern fn cairo::Context* PrintContext.get_cairo_context(&self) @extern("gtk_print_context_get_cairo_context");

<* Maps to get_dpi_x *>
extern fn double PrintContext.get_dpi_x(&self) @extern("gtk_print_context_get_dpi_x");

<* Maps to get_dpi_y *>
extern fn double PrintContext.get_dpi_y(&self) @extern("gtk_print_context_get_dpi_y");

<* Maps to get_hard_margins *>
extern fn bool PrintContext.get_hard_margins(&self, double* top, double* bottom, double* left, double* right) @extern("gtk_print_context_get_hard_margins");

<* Maps to get_height *>
extern fn double PrintContext.get_height(&self) @extern("gtk_print_context_get_height");

<* Maps to get_page_setup *>
extern fn PageSetup* PrintContext.get_page_setup(&self) @extern("gtk_print_context_get_page_setup");

<* Maps to get_pango_fontmap *>
extern fn pango::FontMap* PrintContext.get_pango_fontmap(&self) @extern("gtk_print_context_get_pango_fontmap");

<* Maps to get_width *>
extern fn double PrintContext.get_width(&self) @extern("gtk_print_context_get_width");

<* Maps to set_cairo_context *>
extern fn void PrintContext.set_cairo_context(&self, cairo::Context* cr, double dpi_x, double dpi_y) @extern("gtk_print_context_set_cairo_context");


<* Maps to GtkPrintDialog *>
distinct PrintDialog = void*;

fn gobject::Object* PrintDialog.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_accept_label *>
extern fn ZString PrintDialog.get_accept_label(&self) @extern("gtk_print_dialog_get_accept_label");

<* Maps to get_modal *>
extern fn bool PrintDialog.get_modal(&self) @extern("gtk_print_dialog_get_modal");

<* Maps to get_page_setup *>
extern fn PageSetup* PrintDialog.get_page_setup(&self) @extern("gtk_print_dialog_get_page_setup");

<* Maps to get_print_settings *>
extern fn PrintSettings* PrintDialog.get_print_settings(&self) @extern("gtk_print_dialog_get_print_settings");

<* Maps to get_title *>
extern fn ZString PrintDialog.get_title(&self) @extern("gtk_print_dialog_get_title");

<* Maps to print *>
extern fn void PrintDialog.print(&self, Window* parent, PrintSetup* setup, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gtk_print_dialog_print");

<* Maps to print_file *>
extern fn void PrintDialog.print_file(&self, Window* parent, PrintSetup* setup, gio::File* file, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gtk_print_dialog_print_file");

<* Maps to print_file_finish *>
extern fn bool PrintDialog.print_file_finish(&self, gio::AsyncResult* result) @extern("gtk_print_dialog_print_file_finish");

<* Maps to print_finish *>
extern fn gio::OutputStream* PrintDialog.print_finish(&self, gio::AsyncResult* result) @extern("gtk_print_dialog_print_finish");

<* Maps to set_accept_label *>
extern fn void PrintDialog.set_accept_label(&self, ZString accept_label) @extern("gtk_print_dialog_set_accept_label");

<* Maps to set_modal *>
extern fn void PrintDialog.set_modal(&self, bool modal) @extern("gtk_print_dialog_set_modal");

<* Maps to set_page_setup *>
extern fn void PrintDialog.set_page_setup(&self, PageSetup* page_setup) @extern("gtk_print_dialog_set_page_setup");

<* Maps to set_print_settings *>
extern fn void PrintDialog.set_print_settings(&self, PrintSettings* print_settings) @extern("gtk_print_dialog_set_print_settings");

<* Maps to set_title *>
extern fn void PrintDialog.set_title(&self, ZString title) @extern("gtk_print_dialog_set_title");

<* Maps to setup *>
extern fn void PrintDialog.setup(&self, Window* parent, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gtk_print_dialog_setup");

<* Maps to setup_finish *>
extern fn PrintSetup* PrintDialog.setup_finish(&self, gio::AsyncResult* result) @extern("gtk_print_dialog_setup_finish");


<* Maps to GtkPrintJob *>
distinct PrintJob = void*;

fn gobject::Object* PrintJob.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_collate *>
extern fn bool PrintJob.get_collate(&self) @extern("gtk_print_job_get_collate");

<* Maps to get_n_up *>
extern fn uint PrintJob.get_n_up(&self) @extern("gtk_print_job_get_n_up");

<* Maps to get_n_up_layout *>
extern fn NumberUpLayout PrintJob.get_n_up_layout(&self) @extern("gtk_print_job_get_n_up_layout");

<* Maps to get_num_copies *>
extern fn int PrintJob.get_num_copies(&self) @extern("gtk_print_job_get_num_copies");

<* Maps to get_page_ranges *>
extern fn PageRange PrintJob.get_page_ranges(&self, int* n_ranges) @extern("gtk_print_job_get_page_ranges");

<* Maps to get_page_set *>
extern fn PageSet PrintJob.get_page_set(&self) @extern("gtk_print_job_get_page_set");

<* Maps to get_pages *>
extern fn PrintPages PrintJob.get_pages(&self) @extern("gtk_print_job_get_pages");

<* Maps to get_printer *>
extern fn Printer* PrintJob.get_printer(&self) @extern("gtk_print_job_get_printer");

<* Maps to get_reverse *>
extern fn bool PrintJob.get_reverse(&self) @extern("gtk_print_job_get_reverse");

<* Maps to get_rotate *>
extern fn bool PrintJob.get_rotate(&self) @extern("gtk_print_job_get_rotate");

<* Maps to get_scale *>
extern fn double PrintJob.get_scale(&self) @extern("gtk_print_job_get_scale");

<* Maps to get_settings *>
extern fn PrintSettings* PrintJob.get_settings(&self) @extern("gtk_print_job_get_settings");

<* Maps to get_status *>
extern fn PrintStatus PrintJob.get_status(&self) @extern("gtk_print_job_get_status");

<* Maps to get_surface *>
extern fn cairo::Surface* PrintJob.get_surface(&self) @extern("gtk_print_job_get_surface");

<* Maps to get_title *>
extern fn ZString PrintJob.get_title(&self) @extern("gtk_print_job_get_title");

<* Maps to get_track_print_status *>
extern fn bool PrintJob.get_track_print_status(&self) @extern("gtk_print_job_get_track_print_status");

<* Maps to send *>
extern fn void PrintJob.send(&self, PrintJobCompleteFunc callback, void* user_data, glib::DestroyNotify dnotify) @extern("gtk_print_job_send");

<* Maps to set_collate *>
extern fn void PrintJob.set_collate(&self, bool collate) @extern("gtk_print_job_set_collate");

<* Maps to set_n_up *>
extern fn void PrintJob.set_n_up(&self, uint n_up) @extern("gtk_print_job_set_n_up");

<* Maps to set_n_up_layout *>
extern fn void PrintJob.set_n_up_layout(&self, NumberUpLayout layout) @extern("gtk_print_job_set_n_up_layout");

<* Maps to set_num_copies *>
extern fn void PrintJob.set_num_copies(&self, int num_copies) @extern("gtk_print_job_set_num_copies");

<* Maps to set_page_ranges *>
extern fn void PrintJob.set_page_ranges(&self, PageRange ranges, int n_ranges) @extern("gtk_print_job_set_page_ranges");

<* Maps to set_page_set *>
extern fn void PrintJob.set_page_set(&self, PageSet page_set) @extern("gtk_print_job_set_page_set");

<* Maps to set_pages *>
extern fn void PrintJob.set_pages(&self, PrintPages pages) @extern("gtk_print_job_set_pages");

<* Maps to set_reverse *>
extern fn void PrintJob.set_reverse(&self, bool reverse) @extern("gtk_print_job_set_reverse");

<* Maps to set_rotate *>
extern fn void PrintJob.set_rotate(&self, bool rotate) @extern("gtk_print_job_set_rotate");

<* Maps to set_scale *>
extern fn void PrintJob.set_scale(&self, double scale) @extern("gtk_print_job_set_scale");

<* Maps to set_source_fd *>
extern fn bool PrintJob.set_source_fd(&self, int fd) @extern("gtk_print_job_set_source_fd");

<* Maps to set_source_file *>
extern fn bool PrintJob.set_source_file(&self, ZString filename) @extern("gtk_print_job_set_source_file");

<* Maps to set_track_print_status *>
extern fn void PrintJob.set_track_print_status(&self, bool track_status) @extern("gtk_print_job_set_track_print_status");


<* Maps to GtkPrintOperation *>
distinct PrintOperation = void*;

fn gobject::Object* PrintOperation.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to cancel *>
extern fn void PrintOperation.cancel(&self) @extern("gtk_print_operation_cancel");

<* Maps to draw_page_finish *>
extern fn void PrintOperation.draw_page_finish(&self) @extern("gtk_print_operation_draw_page_finish");

<* Maps to get_default_page_setup *>
extern fn PageSetup* PrintOperation.get_default_page_setup(&self) @extern("gtk_print_operation_get_default_page_setup");

<* Maps to get_embed_page_setup *>
extern fn bool PrintOperation.get_embed_page_setup(&self) @extern("gtk_print_operation_get_embed_page_setup");

<* Maps to get_error *>
extern fn void PrintOperation.get_error(&self) @extern("gtk_print_operation_get_error");

<* Maps to get_has_selection *>
extern fn bool PrintOperation.get_has_selection(&self) @extern("gtk_print_operation_get_has_selection");

<* Maps to get_n_pages_to_print *>
extern fn int PrintOperation.get_n_pages_to_print(&self) @extern("gtk_print_operation_get_n_pages_to_print");

<* Maps to get_print_settings *>
extern fn PrintSettings* PrintOperation.get_print_settings(&self) @extern("gtk_print_operation_get_print_settings");

<* Maps to get_status *>
extern fn PrintStatus PrintOperation.get_status(&self) @extern("gtk_print_operation_get_status");

<* Maps to get_status_string *>
extern fn ZString PrintOperation.get_status_string(&self) @extern("gtk_print_operation_get_status_string");

<* Maps to get_support_selection *>
extern fn bool PrintOperation.get_support_selection(&self) @extern("gtk_print_operation_get_support_selection");

<* Maps to is_finished *>
extern fn bool PrintOperation.is_finished(&self) @extern("gtk_print_operation_is_finished");

<* Maps to run *>
extern fn PrintOperationResult PrintOperation.run(&self, PrintOperationAction action, Window* parent) @extern("gtk_print_operation_run");

<* Maps to set_allow_async *>
extern fn void PrintOperation.set_allow_async(&self, bool allow_async) @extern("gtk_print_operation_set_allow_async");

<* Maps to set_current_page *>
extern fn void PrintOperation.set_current_page(&self, int current_page) @extern("gtk_print_operation_set_current_page");

<* Maps to set_custom_tab_label *>
extern fn void PrintOperation.set_custom_tab_label(&self, ZString label) @extern("gtk_print_operation_set_custom_tab_label");

<* Maps to set_default_page_setup *>
extern fn void PrintOperation.set_default_page_setup(&self, PageSetup* default_page_setup) @extern("gtk_print_operation_set_default_page_setup");

<* Maps to set_defer_drawing *>
extern fn void PrintOperation.set_defer_drawing(&self) @extern("gtk_print_operation_set_defer_drawing");

<* Maps to set_embed_page_setup *>
extern fn void PrintOperation.set_embed_page_setup(&self, bool embed) @extern("gtk_print_operation_set_embed_page_setup");

<* Maps to set_export_filename *>
extern fn void PrintOperation.set_export_filename(&self, ZString filename) @extern("gtk_print_operation_set_export_filename");

<* Maps to set_has_selection *>
extern fn void PrintOperation.set_has_selection(&self, bool has_selection) @extern("gtk_print_operation_set_has_selection");

<* Maps to set_job_name *>
extern fn void PrintOperation.set_job_name(&self, ZString job_name) @extern("gtk_print_operation_set_job_name");

<* Maps to set_n_pages *>
extern fn void PrintOperation.set_n_pages(&self, int n_pages) @extern("gtk_print_operation_set_n_pages");

<* Maps to set_print_settings *>
extern fn void PrintOperation.set_print_settings(&self, PrintSettings* print_settings) @extern("gtk_print_operation_set_print_settings");

<* Maps to set_show_progress *>
extern fn void PrintOperation.set_show_progress(&self, bool show_progress) @extern("gtk_print_operation_set_show_progress");

<* Maps to set_support_selection *>
extern fn void PrintOperation.set_support_selection(&self, bool support_selection) @extern("gtk_print_operation_set_support_selection");

<* Maps to set_track_print_status *>
extern fn void PrintOperation.set_track_print_status(&self, bool track_status) @extern("gtk_print_operation_set_track_print_status");

<* Maps to set_unit *>
extern fn void PrintOperation.set_unit(&self, Unit unit) @extern("gtk_print_operation_set_unit");

<* Maps to set_use_full_page *>
extern fn void PrintOperation.set_use_full_page(&self, bool full_page) @extern("gtk_print_operation_set_use_full_page");


<* Maps to GtkPrintSettings *>
distinct PrintSettings = void*;

fn gobject::Object* PrintSettings.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to copy *>
extern fn PrintSettings* PrintSettings.copy(&self) @extern("gtk_print_settings_copy");

<* Maps to for_each *>
extern fn void PrintSettings.for_each(&self, PrintSettingsFunc func, void* user_data) @extern("gtk_print_settings_foreach");

<* Maps to get *>
extern fn ZString PrintSettings.get(&self, ZString key) @extern("gtk_print_settings_get");

<* Maps to get_bool *>
extern fn bool PrintSettings.get_bool(&self, ZString key) @extern("gtk_print_settings_get_bool");

<* Maps to get_collate *>
extern fn bool PrintSettings.get_collate(&self) @extern("gtk_print_settings_get_collate");

<* Maps to get_default_source *>
extern fn ZString PrintSettings.get_default_source(&self) @extern("gtk_print_settings_get_default_source");

<* Maps to get_dither *>
extern fn ZString PrintSettings.get_dither(&self) @extern("gtk_print_settings_get_dither");

<* Maps to get_double *>
extern fn double PrintSettings.get_double(&self, ZString key) @extern("gtk_print_settings_get_double");

<* Maps to get_double_with_default *>
extern fn double PrintSettings.get_double_with_default(&self, ZString key, double defaultValue) @extern("gtk_print_settings_get_double_with_default");

<* Maps to get_duplex *>
extern fn PrintDuplex PrintSettings.get_duplex(&self) @extern("gtk_print_settings_get_duplex");

<* Maps to get_finishings *>
extern fn ZString PrintSettings.get_finishings(&self) @extern("gtk_print_settings_get_finishings");

<* Maps to get_int *>
extern fn int PrintSettings.get_int(&self, ZString key) @extern("gtk_print_settings_get_int");

<* Maps to get_int_with_default *>
extern fn int PrintSettings.get_int_with_default(&self, ZString key, int defaultValue) @extern("gtk_print_settings_get_int_with_default");

<* Maps to get_length *>
extern fn double PrintSettings.get_length(&self, ZString key, Unit unit) @extern("gtk_print_settings_get_length");

<* Maps to get_media_type *>
extern fn ZString PrintSettings.get_media_type(&self) @extern("gtk_print_settings_get_media_type");

<* Maps to get_n_copies *>
extern fn int PrintSettings.get_n_copies(&self) @extern("gtk_print_settings_get_n_copies");

<* Maps to get_number_up *>
extern fn int PrintSettings.get_number_up(&self) @extern("gtk_print_settings_get_number_up");

<* Maps to get_number_up_layout *>
extern fn NumberUpLayout PrintSettings.get_number_up_layout(&self) @extern("gtk_print_settings_get_number_up_layout");

<* Maps to get_orientation *>
extern fn PageOrientation PrintSettings.get_orientation(&self) @extern("gtk_print_settings_get_orientation");

<* Maps to get_output_bin *>
extern fn ZString PrintSettings.get_output_bin(&self) @extern("gtk_print_settings_get_output_bin");

<* Maps to get_page_ranges *>
extern fn PageRange PrintSettings.get_page_ranges(&self, int* num_ranges) @extern("gtk_print_settings_get_page_ranges");

<* Maps to get_page_set *>
extern fn PageSet PrintSettings.get_page_set(&self) @extern("gtk_print_settings_get_page_set");

<* Maps to get_paper_height *>
extern fn double PrintSettings.get_paper_height(&self, Unit unit) @extern("gtk_print_settings_get_paper_height");

<* Maps to get_paper_size *>
extern fn PaperSize* PrintSettings.get_paper_size(&self) @extern("gtk_print_settings_get_paper_size");

<* Maps to get_paper_width *>
extern fn double PrintSettings.get_paper_width(&self, Unit unit) @extern("gtk_print_settings_get_paper_width");

<* Maps to get_print_pages *>
extern fn PrintPages PrintSettings.get_print_pages(&self) @extern("gtk_print_settings_get_print_pages");

<* Maps to get_printer *>
extern fn ZString PrintSettings.get_printer(&self) @extern("gtk_print_settings_get_printer");

<* Maps to get_printer_lpi *>
extern fn double PrintSettings.get_printer_lpi(&self) @extern("gtk_print_settings_get_printer_lpi");

<* Maps to get_quality *>
extern fn PrintQuality PrintSettings.get_quality(&self) @extern("gtk_print_settings_get_quality");

<* Maps to get_resolution *>
extern fn int PrintSettings.get_resolution(&self) @extern("gtk_print_settings_get_resolution");

<* Maps to get_resolution_x *>
extern fn int PrintSettings.get_resolution_x(&self) @extern("gtk_print_settings_get_resolution_x");

<* Maps to get_resolution_y *>
extern fn int PrintSettings.get_resolution_y(&self) @extern("gtk_print_settings_get_resolution_y");

<* Maps to get_reverse *>
extern fn bool PrintSettings.get_reverse(&self) @extern("gtk_print_settings_get_reverse");

<* Maps to get_scale *>
extern fn double PrintSettings.get_scale(&self) @extern("gtk_print_settings_get_scale");

<* Maps to get_use_color *>
extern fn bool PrintSettings.get_use_color(&self) @extern("gtk_print_settings_get_use_color");

<* Maps to has_key *>
extern fn bool PrintSettings.has_key(&self, ZString key) @extern("gtk_print_settings_has_key");

<* Maps to load_file *>
extern fn bool PrintSettings.load_file(&self, ZString file_name) @extern("gtk_print_settings_load_file");

<* Maps to load_key_file *>
extern fn bool PrintSettings.load_key_file(&self, glib::KeyFile* key_file, ZString group_name) @extern("gtk_print_settings_load_key_file");

<* Maps to set *>
extern fn void PrintSettings.set(&self, ZString key, ZString value) @extern("gtk_print_settings_set");

<* Maps to set_bool *>
extern fn void PrintSettings.set_bool(&self, ZString key, bool value) @extern("gtk_print_settings_set_bool");

<* Maps to set_collate *>
extern fn void PrintSettings.set_collate(&self, bool collate) @extern("gtk_print_settings_set_collate");

<* Maps to set_default_source *>
extern fn void PrintSettings.set_default_source(&self, ZString default_source) @extern("gtk_print_settings_set_default_source");

<* Maps to set_dither *>
extern fn void PrintSettings.set_dither(&self, ZString dither) @extern("gtk_print_settings_set_dither");

<* Maps to set_double *>
extern fn void PrintSettings.set_double(&self, ZString key, double value) @extern("gtk_print_settings_set_double");

<* Maps to set_duplex *>
extern fn void PrintSettings.set_duplex(&self, PrintDuplex duplex) @extern("gtk_print_settings_set_duplex");

<* Maps to set_finishings *>
extern fn void PrintSettings.set_finishings(&self, ZString finishings) @extern("gtk_print_settings_set_finishings");

<* Maps to set_int *>
extern fn void PrintSettings.set_int(&self, ZString key, int value) @extern("gtk_print_settings_set_int");

<* Maps to set_length *>
extern fn void PrintSettings.set_length(&self, ZString key, double value, Unit unit) @extern("gtk_print_settings_set_length");

<* Maps to set_media_type *>
extern fn void PrintSettings.set_media_type(&self, ZString media_type) @extern("gtk_print_settings_set_media_type");

<* Maps to set_n_copies *>
extern fn void PrintSettings.set_n_copies(&self, int num_copies) @extern("gtk_print_settings_set_n_copies");

<* Maps to set_number_up *>
extern fn void PrintSettings.set_number_up(&self, int number_up) @extern("gtk_print_settings_set_number_up");

<* Maps to set_number_up_layout *>
extern fn void PrintSettings.set_number_up_layout(&self, NumberUpLayout number_up_layout) @extern("gtk_print_settings_set_number_up_layout");

<* Maps to set_orientation *>
extern fn void PrintSettings.set_orientation(&self, PageOrientation orientation) @extern("gtk_print_settings_set_orientation");

<* Maps to set_output_bin *>
extern fn void PrintSettings.set_output_bin(&self, ZString output_bin) @extern("gtk_print_settings_set_output_bin");

<* Maps to set_page_ranges *>
extern fn void PrintSettings.set_page_ranges(&self, PageRange page_ranges, int num_ranges) @extern("gtk_print_settings_set_page_ranges");

<* Maps to set_page_set *>
extern fn void PrintSettings.set_page_set(&self, PageSet page_set) @extern("gtk_print_settings_set_page_set");

<* Maps to set_paper_height *>
extern fn void PrintSettings.set_paper_height(&self, double height, Unit unit) @extern("gtk_print_settings_set_paper_height");

<* Maps to set_paper_size *>
extern fn void PrintSettings.set_paper_size(&self, PaperSize* paper_size) @extern("gtk_print_settings_set_paper_size");

<* Maps to set_paper_width *>
extern fn void PrintSettings.set_paper_width(&self, double width, Unit unit) @extern("gtk_print_settings_set_paper_width");

<* Maps to set_print_pages *>
extern fn void PrintSettings.set_print_pages(&self, PrintPages pages) @extern("gtk_print_settings_set_print_pages");

<* Maps to set_printer *>
extern fn void PrintSettings.set_printer(&self, ZString printer) @extern("gtk_print_settings_set_printer");

<* Maps to set_printer_lpi *>
extern fn void PrintSettings.set_printer_lpi(&self, double lpi) @extern("gtk_print_settings_set_printer_lpi");

<* Maps to set_quality *>
extern fn void PrintSettings.set_quality(&self, PrintQuality quality) @extern("gtk_print_settings_set_quality");

<* Maps to set_resolution *>
extern fn void PrintSettings.set_resolution(&self, int resolution) @extern("gtk_print_settings_set_resolution");

<* Maps to set_resolution_xy *>
extern fn void PrintSettings.set_resolution_xy(&self, int resolution_x, int resolution_y) @extern("gtk_print_settings_set_resolution_xy");

<* Maps to set_reverse *>
extern fn void PrintSettings.set_reverse(&self, bool reverse) @extern("gtk_print_settings_set_reverse");

<* Maps to set_scale *>
extern fn void PrintSettings.set_scale(&self, double scale) @extern("gtk_print_settings_set_scale");

<* Maps to set_use_color *>
extern fn void PrintSettings.set_use_color(&self, bool use_color) @extern("gtk_print_settings_set_use_color");

<* Maps to to_file *>
extern fn bool PrintSettings.to_file(&self, ZString file_name) @extern("gtk_print_settings_to_file");

<* Maps to to_gvariant *>
extern fn glib::Variant* PrintSettings.to_gvariant(&self) @extern("gtk_print_settings_to_gvariant");

<* Maps to to_key_file *>
extern fn void PrintSettings.to_key_file(&self, glib::KeyFile* key_file, ZString group_name) @extern("gtk_print_settings_to_key_file");

<* Maps to unset *>
extern fn void PrintSettings.unset(&self, ZString key) @extern("gtk_print_settings_unset");


<* Maps to GtkPrintUnixDialog *>
distinct PrintUnixDialog = void*;

fn Dialog* PrintUnixDialog.as_Dialog(&self) => (Dialog*)(self);


<* Maps to add_custom_tab *>
extern fn void PrintUnixDialog.add_custom_tab(&self, Widget* child, Widget* tab_label) @extern("gtk_print_unix_dialog_add_custom_tab");

<* Maps to get_current_page *>
extern fn int PrintUnixDialog.get_current_page(&self) @extern("gtk_print_unix_dialog_get_current_page");

<* Maps to get_embed_page_setup *>
extern fn bool PrintUnixDialog.get_embed_page_setup(&self) @extern("gtk_print_unix_dialog_get_embed_page_setup");

<* Maps to get_has_selection *>
extern fn bool PrintUnixDialog.get_has_selection(&self) @extern("gtk_print_unix_dialog_get_has_selection");

<* Maps to get_manual_capabilities *>
extern fn PrintCapabilities PrintUnixDialog.get_manual_capabilities(&self) @extern("gtk_print_unix_dialog_get_manual_capabilities");

<* Maps to get_page_setup *>
extern fn PageSetup* PrintUnixDialog.get_page_setup(&self) @extern("gtk_print_unix_dialog_get_page_setup");

<* Maps to get_page_setup_set *>
extern fn bool PrintUnixDialog.get_page_setup_set(&self) @extern("gtk_print_unix_dialog_get_page_setup_set");

<* Maps to get_selected_printer *>
extern fn Printer* PrintUnixDialog.get_selected_printer(&self) @extern("gtk_print_unix_dialog_get_selected_printer");

<* Maps to get_settings *>
extern fn PrintSettings* PrintUnixDialog.get_settings(&self) @extern("gtk_print_unix_dialog_get_settings");

<* Maps to get_support_selection *>
extern fn bool PrintUnixDialog.get_support_selection(&self) @extern("gtk_print_unix_dialog_get_support_selection");

<* Maps to set_current_page *>
extern fn void PrintUnixDialog.set_current_page(&self, int current_page) @extern("gtk_print_unix_dialog_set_current_page");

<* Maps to set_embed_page_setup *>
extern fn void PrintUnixDialog.set_embed_page_setup(&self, bool embed) @extern("gtk_print_unix_dialog_set_embed_page_setup");

<* Maps to set_has_selection *>
extern fn void PrintUnixDialog.set_has_selection(&self, bool has_selection) @extern("gtk_print_unix_dialog_set_has_selection");

<* Maps to set_manual_capabilities *>
extern fn void PrintUnixDialog.set_manual_capabilities(&self, PrintCapabilities capabilities) @extern("gtk_print_unix_dialog_set_manual_capabilities");

<* Maps to set_page_setup *>
extern fn void PrintUnixDialog.set_page_setup(&self, PageSetup* page_setup) @extern("gtk_print_unix_dialog_set_page_setup");

<* Maps to set_settings *>
extern fn void PrintUnixDialog.set_settings(&self, PrintSettings* settings) @extern("gtk_print_unix_dialog_set_settings");

<* Maps to set_support_selection *>
extern fn void PrintUnixDialog.set_support_selection(&self, bool support_selection) @extern("gtk_print_unix_dialog_set_support_selection");


<* Maps to GtkPrinter *>
distinct Printer = void*;

fn gobject::Object* Printer.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to accepts_pdf *>
extern fn bool Printer.accepts_pdf(&self) @extern("gtk_printer_accepts_pdf");

<* Maps to accepts_ps *>
extern fn bool Printer.accepts_ps(&self) @extern("gtk_printer_accepts_ps");

<* Maps to compare *>
extern fn int Printer.compare(&self, Printer* b) @extern("gtk_printer_compare");

<* Maps to get_backend *>
extern fn PrintBackend* Printer.get_backend(&self) @extern("gtk_printer_get_backend");

<* Maps to get_capabilities *>
extern fn PrintCapabilities Printer.get_capabilities(&self) @extern("gtk_printer_get_capabilities");

<* Maps to get_default_page_size *>
extern fn PageSetup* Printer.get_default_page_size(&self) @extern("gtk_printer_get_default_page_size");

<* Maps to get_description *>
extern fn ZString Printer.get_description(&self) @extern("gtk_printer_get_description");

<* Maps to get_hard_margins *>
extern fn bool Printer.get_hard_margins(&self, double* top, double* bottom, double* left, double* right) @extern("gtk_printer_get_hard_margins");

<* Maps to get_hard_margins_for_paper_size *>
extern fn bool Printer.get_hard_margins_for_paper_size(&self, PaperSize* paper_size, double* top, double* bottom, double* left, double* right) @extern("gtk_printer_get_hard_margins_for_paper_size");

<* Maps to get_icon_name *>
extern fn ZString Printer.get_icon_name(&self) @extern("gtk_printer_get_icon_name");

<* Maps to get_job_count *>
extern fn int Printer.get_job_count(&self) @extern("gtk_printer_get_job_count");

<* Maps to get_location *>
extern fn ZString Printer.get_location(&self) @extern("gtk_printer_get_location");

<* Maps to get_name *>
extern fn ZString Printer.get_name(&self) @extern("gtk_printer_get_name");

<* Maps to get_state_message *>
extern fn ZString Printer.get_state_message(&self) @extern("gtk_printer_get_state_message");

<* Maps to has_details *>
extern fn bool Printer.has_details(&self) @extern("gtk_printer_has_details");

<* Maps to is_accepting_jobs *>
extern fn bool Printer.is_accepting_jobs(&self) @extern("gtk_printer_is_accepting_jobs");

<* Maps to is_active *>
extern fn bool Printer.is_active(&self) @extern("gtk_printer_is_active");

<* Maps to is_default *>
extern fn bool Printer.is_default(&self) @extern("gtk_printer_is_default");

<* Maps to is_paused *>
extern fn bool Printer.is_paused(&self) @extern("gtk_printer_is_paused");

<* Maps to is_virtual *>
extern fn bool Printer.is_virtual(&self) @extern("gtk_printer_is_virtual");

<* Maps to list_papers *>
extern fn glib::List* Printer.list_papers(&self) @extern("gtk_printer_list_papers");

<* Maps to request_details *>
extern fn void Printer.request_details(&self) @extern("gtk_printer_request_details");


<* Maps to GtkProgressBar *>
distinct ProgressBar = void*;

fn Widget* ProgressBar.as_Widget(&self) => (Widget*)(self);


<* Maps to get_ellipsize *>
extern fn pango::EllipsizeMode ProgressBar.get_ellipsize(&self) @extern("gtk_progress_bar_get_ellipsize");

<* Maps to get_fraction *>
extern fn double ProgressBar.get_fraction(&self) @extern("gtk_progress_bar_get_fraction");

<* Maps to get_inverted *>
extern fn bool ProgressBar.get_inverted(&self) @extern("gtk_progress_bar_get_inverted");

<* Maps to get_pulse_step *>
extern fn double ProgressBar.get_pulse_step(&self) @extern("gtk_progress_bar_get_pulse_step");

<* Maps to get_show_text *>
extern fn bool ProgressBar.get_show_text(&self) @extern("gtk_progress_bar_get_show_text");

<* Maps to get_text *>
extern fn ZString ProgressBar.get_text(&self) @extern("gtk_progress_bar_get_text");

<* Maps to pulse *>
extern fn void ProgressBar.pulse(&self) @extern("gtk_progress_bar_pulse");

<* Maps to set_ellipsize *>
extern fn void ProgressBar.set_ellipsize(&self, pango::EllipsizeMode mode) @extern("gtk_progress_bar_set_ellipsize");

<* Maps to set_fraction *>
extern fn void ProgressBar.set_fraction(&self, double fraction) @extern("gtk_progress_bar_set_fraction");

<* Maps to set_inverted *>
extern fn void ProgressBar.set_inverted(&self, bool inverted) @extern("gtk_progress_bar_set_inverted");

<* Maps to set_pulse_step *>
extern fn void ProgressBar.set_pulse_step(&self, double fraction) @extern("gtk_progress_bar_set_pulse_step");

<* Maps to set_show_text *>
extern fn void ProgressBar.set_show_text(&self, bool show_text) @extern("gtk_progress_bar_set_show_text");

<* Maps to set_text *>
extern fn void ProgressBar.set_text(&self, ZString text) @extern("gtk_progress_bar_set_text");


<* Maps to GtkPropertyExpression *>
distinct PropertyExpression = void*;

fn Expression* PropertyExpression.as_Expression(&self) => (Expression*)(self);


<* Maps to get_expression *>
extern fn Expression* PropertyExpression.get_expression(&self) @extern("gtk_property_expression_get_expression");

<* Maps to get_pspec *>
extern fn gobject::ParamSpec* PropertyExpression.get_pspec(&self) @extern("gtk_property_expression_get_pspec");


<* Maps to GtkRange *>
distinct Range = void*;

fn Widget* Range.as_Widget(&self) => (Widget*)(self);


<* Maps to get_adjustment *>
extern fn Adjustment* Range.get_adjustment(&self) @extern("gtk_range_get_adjustment");

<* Maps to get_fill_level *>
extern fn double Range.get_fill_level(&self) @extern("gtk_range_get_fill_level");

<* Maps to get_flippable *>
extern fn bool Range.get_flippable(&self) @extern("gtk_range_get_flippable");

<* Maps to get_inverted *>
extern fn bool Range.get_inverted(&self) @extern("gtk_range_get_inverted");

<* Maps to get_range_rect *>
extern fn void Range.get_range_rect(&self, gdk::Rectangle* range_rect) @extern("gtk_range_get_range_rect");

<* Maps to get_restrict_to_fill_level *>
extern fn bool Range.get_restrict_to_fill_level(&self) @extern("gtk_range_get_restrict_to_fill_level");

<* Maps to get_round_digits *>
extern fn int Range.get_round_digits(&self) @extern("gtk_range_get_round_digits");

<* Maps to get_show_fill_level *>
extern fn bool Range.get_show_fill_level(&self) @extern("gtk_range_get_show_fill_level");

<* Maps to get_slider_range *>
extern fn void Range.get_slider_range(&self, int* slider_start, int* slider_end) @extern("gtk_range_get_slider_range");

<* Maps to get_slider_size_fixed *>
extern fn bool Range.get_slider_size_fixed(&self) @extern("gtk_range_get_slider_size_fixed");

<* Maps to get_value *>
extern fn double Range.get_value(&self) @extern("gtk_range_get_value");

<* Maps to set_adjustment *>
extern fn void Range.set_adjustment(&self, Adjustment* adjustment) @extern("gtk_range_set_adjustment");

<* Maps to set_fill_level *>
extern fn void Range.set_fill_level(&self, double fill_level) @extern("gtk_range_set_fill_level");

<* Maps to set_flippable *>
extern fn void Range.set_flippable(&self, bool flippable) @extern("gtk_range_set_flippable");

<* Maps to set_increments *>
extern fn void Range.set_increments(&self, double step, double page) @extern("gtk_range_set_increments");

<* Maps to set_inverted *>
extern fn void Range.set_inverted(&self, bool setting) @extern("gtk_range_set_inverted");

<* Maps to set_range *>
extern fn void Range.set_range(&self, double min, double max) @extern("gtk_range_set_range");

<* Maps to set_restrict_to_fill_level *>
extern fn void Range.set_restrict_to_fill_level(&self, bool restrict_to_fill_level) @extern("gtk_range_set_restrict_to_fill_level");

<* Maps to set_round_digits *>
extern fn void Range.set_round_digits(&self, int round_digits) @extern("gtk_range_set_round_digits");

<* Maps to set_show_fill_level *>
extern fn void Range.set_show_fill_level(&self, bool show_fill_level) @extern("gtk_range_set_show_fill_level");

<* Maps to set_slider_size_fixed *>
extern fn void Range.set_slider_size_fixed(&self, bool size_fixed) @extern("gtk_range_set_slider_size_fixed");

<* Maps to set_value *>
extern fn void Range.set_value(&self, double value) @extern("gtk_range_set_value");


<* Maps to GtkRecentManager *>
distinct RecentManager = void*;

fn gobject::Object* RecentManager.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to add_full *>
extern fn bool RecentManager.add_full(&self, ZString uri, RecentData* recent_data) @extern("gtk_recent_manager_add_full");

<* Maps to add_item *>
extern fn bool RecentManager.add_item(&self, ZString uri) @extern("gtk_recent_manager_add_item");

<* Maps to get_items *>
extern fn glib::List* RecentManager.get_items(&self) @extern("gtk_recent_manager_get_items");

<* Maps to has_item *>
extern fn bool RecentManager.has_item(&self, ZString uri) @extern("gtk_recent_manager_has_item");

<* Maps to lookup_item *>
extern fn RecentInfo* RecentManager.lookup_item(&self, ZString uri) @extern("gtk_recent_manager_lookup_item");

<* Maps to move_item *>
extern fn bool RecentManager.move_item(&self, ZString uri, ZString new_uri) @extern("gtk_recent_manager_move_item");

<* Maps to purge_items *>
extern fn int RecentManager.purge_items(&self) @extern("gtk_recent_manager_purge_items");

<* Maps to remove_item *>
extern fn bool RecentManager.remove_item(&self, ZString uri) @extern("gtk_recent_manager_remove_item");


<* Maps to GtkRevealer *>
distinct Revealer = void*;

fn Widget* Revealer.as_Widget(&self) => (Widget*)(self);


<* Maps to get_child *>
extern fn Widget* Revealer.get_child(&self) @extern("gtk_revealer_get_child");

<* Maps to get_child_revealed *>
extern fn bool Revealer.get_child_revealed(&self) @extern("gtk_revealer_get_child_revealed");

<* Maps to get_reveal_child *>
extern fn bool Revealer.get_reveal_child(&self) @extern("gtk_revealer_get_reveal_child");

<* Maps to get_transition_duration *>
extern fn uint Revealer.get_transition_duration(&self) @extern("gtk_revealer_get_transition_duration");

<* Maps to get_transition_type *>
extern fn RevealerTransitionType Revealer.get_transition_type(&self) @extern("gtk_revealer_get_transition_type");

<* Maps to set_child *>
extern fn void Revealer.set_child(&self, Widget* child) @extern("gtk_revealer_set_child");

<* Maps to set_reveal_child *>
extern fn void Revealer.set_reveal_child(&self, bool reveal_child) @extern("gtk_revealer_set_reveal_child");

<* Maps to set_transition_duration *>
extern fn void Revealer.set_transition_duration(&self, uint duration) @extern("gtk_revealer_set_transition_duration");

<* Maps to set_transition_type *>
extern fn void Revealer.set_transition_type(&self, RevealerTransitionType transition) @extern("gtk_revealer_set_transition_type");


<* Maps to GtkScale *>
distinct Scale = void*;

fn Range* Scale.as_Range(&self) => (Range*)(self);


<* Maps to add_mark *>
extern fn void Scale.add_mark(&self, double value, PositionType position, ZString markup) @extern("gtk_scale_add_mark");

<* Maps to clear_marks *>
extern fn void Scale.clear_marks(&self) @extern("gtk_scale_clear_marks");

<* Maps to get_digits *>
extern fn int Scale.get_digits(&self) @extern("gtk_scale_get_digits");

<* Maps to get_draw_value *>
extern fn bool Scale.get_draw_value(&self) @extern("gtk_scale_get_draw_value");

<* Maps to get_has_origin *>
extern fn bool Scale.get_has_origin(&self) @extern("gtk_scale_get_has_origin");

<* Maps to get_layout *>
extern fn pango::Layout* Scale.get_layout(&self) @extern("gtk_scale_get_layout");

<* Maps to get_layout_offsets *>
extern fn void Scale.get_layout_offsets(&self, int* x, int* y) @extern("gtk_scale_get_layout_offsets");

<* Maps to get_value_pos *>
extern fn PositionType Scale.get_value_pos(&self) @extern("gtk_scale_get_value_pos");

<* Maps to set_digits *>
extern fn void Scale.set_digits(&self, int digits) @extern("gtk_scale_set_digits");

<* Maps to set_draw_value *>
extern fn void Scale.set_draw_value(&self, bool draw_value) @extern("gtk_scale_set_draw_value");

<* Maps to set_format_value_func *>
extern fn void Scale.set_format_value_func(&self, ScaleFormatValueFunc func, void* user_data, glib::DestroyNotify destroy_notify) @extern("gtk_scale_set_format_value_func");

<* Maps to set_has_origin *>
extern fn void Scale.set_has_origin(&self, bool has_origin) @extern("gtk_scale_set_has_origin");

<* Maps to set_value_pos *>
extern fn void Scale.set_value_pos(&self, PositionType pos) @extern("gtk_scale_set_value_pos");


<* Maps to GtkScaleButton *>
distinct ScaleButton = void*;

fn Widget* ScaleButton.as_Widget(&self) => (Widget*)(self);


<* Maps to get_active *>
extern fn bool ScaleButton.get_active(&self) @extern("gtk_scale_button_get_active");

<* Maps to get_adjustment *>
extern fn Adjustment* ScaleButton.get_adjustment(&self) @extern("gtk_scale_button_get_adjustment");

<* Maps to get_has_frame *>
extern fn bool ScaleButton.get_has_frame(&self) @extern("gtk_scale_button_get_has_frame");

<* Maps to get_minus_button *>
extern fn Button* ScaleButton.get_minus_button(&self) @extern("gtk_scale_button_get_minus_button");

<* Maps to get_plus_button *>
extern fn Button* ScaleButton.get_plus_button(&self) @extern("gtk_scale_button_get_plus_button");

<* Maps to get_popup *>
extern fn Widget* ScaleButton.get_popup(&self) @extern("gtk_scale_button_get_popup");

<* Maps to get_value *>
extern fn double ScaleButton.get_value(&self) @extern("gtk_scale_button_get_value");

<* Maps to set_adjustment *>
extern fn void ScaleButton.set_adjustment(&self, Adjustment* adjustment) @extern("gtk_scale_button_set_adjustment");

<* Maps to set_has_frame *>
extern fn void ScaleButton.set_has_frame(&self, bool has_frame) @extern("gtk_scale_button_set_has_frame");

<* Maps to set_icons *>
extern fn void ScaleButton.set_icons(&self, ZString* icons) @extern("gtk_scale_button_set_icons");

<* Maps to set_value *>
extern fn void ScaleButton.set_value(&self, double value) @extern("gtk_scale_button_set_value");


<* Maps to GtkScrollbar *>
distinct Scrollbar = void*;

fn Widget* Scrollbar.as_Widget(&self) => (Widget*)(self);


<* Maps to get_adjustment *>
extern fn Adjustment* Scrollbar.get_adjustment(&self) @extern("gtk_scrollbar_get_adjustment");

<* Maps to set_adjustment *>
extern fn void Scrollbar.set_adjustment(&self, Adjustment* adjustment) @extern("gtk_scrollbar_set_adjustment");


<* Maps to GtkScrolledWindow *>
distinct ScrolledWindow = void*;

fn Widget* ScrolledWindow.as_Widget(&self) => (Widget*)(self);


<* Maps to get_child *>
extern fn Widget* ScrolledWindow.get_child(&self) @extern("gtk_scrolled_window_get_child");

<* Maps to get_hadjustment *>
extern fn Adjustment* ScrolledWindow.get_hadjustment(&self) @extern("gtk_scrolled_window_get_hadjustment");

<* Maps to get_has_frame *>
extern fn bool ScrolledWindow.get_has_frame(&self) @extern("gtk_scrolled_window_get_has_frame");

<* Maps to get_hscrollbar *>
extern fn Widget* ScrolledWindow.get_hscrollbar(&self) @extern("gtk_scrolled_window_get_hscrollbar");

<* Maps to get_kinetic_scrolling *>
extern fn bool ScrolledWindow.get_kinetic_scrolling(&self) @extern("gtk_scrolled_window_get_kinetic_scrolling");

<* Maps to get_max_content_height *>
extern fn int ScrolledWindow.get_max_content_height(&self) @extern("gtk_scrolled_window_get_max_content_height");

<* Maps to get_max_content_width *>
extern fn int ScrolledWindow.get_max_content_width(&self) @extern("gtk_scrolled_window_get_max_content_width");

<* Maps to get_min_content_height *>
extern fn int ScrolledWindow.get_min_content_height(&self) @extern("gtk_scrolled_window_get_min_content_height");

<* Maps to get_min_content_width *>
extern fn int ScrolledWindow.get_min_content_width(&self) @extern("gtk_scrolled_window_get_min_content_width");

<* Maps to get_overlay_scrolling *>
extern fn bool ScrolledWindow.get_overlay_scrolling(&self) @extern("gtk_scrolled_window_get_overlay_scrolling");

<* Maps to get_placement *>
extern fn CornerType ScrolledWindow.get_placement(&self) @extern("gtk_scrolled_window_get_placement");

<* Maps to get_policy *>
extern fn void ScrolledWindow.get_policy(&self, PolicyType* hscrollbar_policy, PolicyType* vscrollbar_policy) @extern("gtk_scrolled_window_get_policy");

<* Maps to get_propagate_natural_height *>
extern fn bool ScrolledWindow.get_propagate_natural_height(&self) @extern("gtk_scrolled_window_get_propagate_natural_height");

<* Maps to get_propagate_natural_width *>
extern fn bool ScrolledWindow.get_propagate_natural_width(&self) @extern("gtk_scrolled_window_get_propagate_natural_width");

<* Maps to get_vadjustment *>
extern fn Adjustment* ScrolledWindow.get_vadjustment(&self) @extern("gtk_scrolled_window_get_vadjustment");

<* Maps to get_vscrollbar *>
extern fn Widget* ScrolledWindow.get_vscrollbar(&self) @extern("gtk_scrolled_window_get_vscrollbar");

<* Maps to set_child *>
extern fn void ScrolledWindow.set_child(&self, Widget* child) @extern("gtk_scrolled_window_set_child");

<* Maps to set_hadjustment *>
extern fn void ScrolledWindow.set_hadjustment(&self, Adjustment* hadjustment) @extern("gtk_scrolled_window_set_hadjustment");

<* Maps to set_has_frame *>
extern fn void ScrolledWindow.set_has_frame(&self, bool has_frame) @extern("gtk_scrolled_window_set_has_frame");

<* Maps to set_kinetic_scrolling *>
extern fn void ScrolledWindow.set_kinetic_scrolling(&self, bool kinetic_scrolling) @extern("gtk_scrolled_window_set_kinetic_scrolling");

<* Maps to set_max_content_height *>
extern fn void ScrolledWindow.set_max_content_height(&self, int height) @extern("gtk_scrolled_window_set_max_content_height");

<* Maps to set_max_content_width *>
extern fn void ScrolledWindow.set_max_content_width(&self, int width) @extern("gtk_scrolled_window_set_max_content_width");

<* Maps to set_min_content_height *>
extern fn void ScrolledWindow.set_min_content_height(&self, int height) @extern("gtk_scrolled_window_set_min_content_height");

<* Maps to set_min_content_width *>
extern fn void ScrolledWindow.set_min_content_width(&self, int width) @extern("gtk_scrolled_window_set_min_content_width");

<* Maps to set_overlay_scrolling *>
extern fn void ScrolledWindow.set_overlay_scrolling(&self, bool overlay_scrolling) @extern("gtk_scrolled_window_set_overlay_scrolling");

<* Maps to set_placement *>
extern fn void ScrolledWindow.set_placement(&self, CornerType window_placement) @extern("gtk_scrolled_window_set_placement");

<* Maps to set_policy *>
extern fn void ScrolledWindow.set_policy(&self, PolicyType hscrollbar_policy, PolicyType vscrollbar_policy) @extern("gtk_scrolled_window_set_policy");

<* Maps to set_propagate_natural_height *>
extern fn void ScrolledWindow.set_propagate_natural_height(&self, bool propagate) @extern("gtk_scrolled_window_set_propagate_natural_height");

<* Maps to set_propagate_natural_width *>
extern fn void ScrolledWindow.set_propagate_natural_width(&self, bool propagate) @extern("gtk_scrolled_window_set_propagate_natural_width");

<* Maps to set_vadjustment *>
extern fn void ScrolledWindow.set_vadjustment(&self, Adjustment* vadjustment) @extern("gtk_scrolled_window_set_vadjustment");

<* Maps to unset_placement *>
extern fn void ScrolledWindow.unset_placement(&self) @extern("gtk_scrolled_window_unset_placement");


<* Maps to GtkSearchBar *>
distinct SearchBar = void*;

fn Widget* SearchBar.as_Widget(&self) => (Widget*)(self);


<* Maps to connect_entry *>
extern fn void SearchBar.connect_entry(&self, Editable* entry) @extern("gtk_search_bar_connect_entry");

<* Maps to get_child *>
extern fn Widget* SearchBar.get_child(&self) @extern("gtk_search_bar_get_child");

<* Maps to get_key_capture_widget *>
extern fn Widget* SearchBar.get_key_capture_widget(&self) @extern("gtk_search_bar_get_key_capture_widget");

<* Maps to get_search_mode *>
extern fn bool SearchBar.get_search_mode(&self) @extern("gtk_search_bar_get_search_mode");

<* Maps to get_show_close_button *>
extern fn bool SearchBar.get_show_close_button(&self) @extern("gtk_search_bar_get_show_close_button");

<* Maps to set_child *>
extern fn void SearchBar.set_child(&self, Widget* child) @extern("gtk_search_bar_set_child");

<* Maps to set_key_capture_widget *>
extern fn void SearchBar.set_key_capture_widget(&self, Widget* widget) @extern("gtk_search_bar_set_key_capture_widget");

<* Maps to set_search_mode *>
extern fn void SearchBar.set_search_mode(&self, bool search_mode) @extern("gtk_search_bar_set_search_mode");

<* Maps to set_show_close_button *>
extern fn void SearchBar.set_show_close_button(&self, bool visible) @extern("gtk_search_bar_set_show_close_button");


<* Maps to GtkSearchEntry *>
distinct SearchEntry = void*;

fn Widget* SearchEntry.as_Widget(&self) => (Widget*)(self);


<* Maps to get_input_hints *>
extern fn InputHints SearchEntry.get_input_hints(&self) @extern("gtk_search_entry_get_input_hints");

<* Maps to get_input_purpose *>
extern fn InputPurpose SearchEntry.get_input_purpose(&self) @extern("gtk_search_entry_get_input_purpose");

<* Maps to get_key_capture_widget *>
extern fn Widget* SearchEntry.get_key_capture_widget(&self) @extern("gtk_search_entry_get_key_capture_widget");

<* Maps to get_placeholder_text *>
extern fn ZString SearchEntry.get_placeholder_text(&self) @extern("gtk_search_entry_get_placeholder_text");

<* Maps to get_search_delay *>
extern fn uint SearchEntry.get_search_delay(&self) @extern("gtk_search_entry_get_search_delay");

<* Maps to set_input_hints *>
extern fn void SearchEntry.set_input_hints(&self, InputHints hints) @extern("gtk_search_entry_set_input_hints");

<* Maps to set_input_purpose *>
extern fn void SearchEntry.set_input_purpose(&self, InputPurpose purpose) @extern("gtk_search_entry_set_input_purpose");

<* Maps to set_key_capture_widget *>
extern fn void SearchEntry.set_key_capture_widget(&self, Widget* widget) @extern("gtk_search_entry_set_key_capture_widget");

<* Maps to set_placeholder_text *>
extern fn void SearchEntry.set_placeholder_text(&self, ZString text) @extern("gtk_search_entry_set_placeholder_text");

<* Maps to set_search_delay *>
extern fn void SearchEntry.set_search_delay(&self, uint delay) @extern("gtk_search_entry_set_search_delay");


<* Maps to GtkSelectionFilterModel *>
distinct SelectionFilterModel = void*;

fn gobject::Object* SelectionFilterModel.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_model *>
extern fn SelectionModel* SelectionFilterModel.get_model(&self) @extern("gtk_selection_filter_model_get_model");

<* Maps to set_model *>
extern fn void SelectionFilterModel.set_model(&self, SelectionModel* model) @extern("gtk_selection_filter_model_set_model");


<* Maps to GtkSeparator *>
distinct Separator = void*;

fn Widget* Separator.as_Widget(&self) => (Widget*)(self);



<* Maps to GtkSettings *>
distinct Settings = void*;

fn gobject::Object* Settings.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to reset_property *>
extern fn void Settings.reset_property(&self, ZString name) @extern("gtk_settings_reset_property");


<* Maps to GtkShortcut *>
distinct Shortcut = void*;

fn gobject::Object* Shortcut.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_action *>
extern fn ShortcutAction* Shortcut.get_action(&self) @extern("gtk_shortcut_get_action");

<* Maps to get_arguments *>
extern fn glib::Variant* Shortcut.get_arguments(&self) @extern("gtk_shortcut_get_arguments");

<* Maps to get_trigger *>
extern fn ShortcutTrigger* Shortcut.get_trigger(&self) @extern("gtk_shortcut_get_trigger");

<* Maps to set_action *>
extern fn void Shortcut.set_action(&self, ShortcutAction* action) @extern("gtk_shortcut_set_action");

<* Maps to set_arguments *>
extern fn void Shortcut.set_arguments(&self, glib::Variant* args) @extern("gtk_shortcut_set_arguments");

<* Maps to set_trigger *>
extern fn void Shortcut.set_trigger(&self, ShortcutTrigger* trigger) @extern("gtk_shortcut_set_trigger");


<* Maps to GtkShortcutAction *>
distinct ShortcutAction = void*;

fn gobject::Object* ShortcutAction.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to activate *>
extern fn bool ShortcutAction.activate(&self, ShortcutActionFlags flags, Widget* widget, glib::Variant* args) @extern("gtk_shortcut_action_activate");

<* Maps to print *>
extern fn void ShortcutAction.print(&self, glib::String* string) @extern("gtk_shortcut_action_print");

<* Maps to to_string *>
extern fn ZString* ShortcutAction.to_string(&self) @extern("gtk_shortcut_action_to_string");


<* Maps to GtkShortcutController *>
distinct ShortcutController = void*;

fn EventController* ShortcutController.as_EventController(&self) => (EventController*)(self);


<* Maps to add_shortcut *>
extern fn void ShortcutController.add_shortcut(&self, Shortcut* shortcut) @extern("gtk_shortcut_controller_add_shortcut");

<* Maps to get_mnemonics_modifiers *>
extern fn gdk::ModifierType ShortcutController.get_mnemonics_modifiers(&self) @extern("gtk_shortcut_controller_get_mnemonics_modifiers");

<* Maps to get_scope *>
extern fn ShortcutScope ShortcutController.get_scope(&self) @extern("gtk_shortcut_controller_get_scope");

<* Maps to remove_shortcut *>
extern fn void ShortcutController.remove_shortcut(&self, Shortcut* shortcut) @extern("gtk_shortcut_controller_remove_shortcut");

<* Maps to set_mnemonics_modifiers *>
extern fn void ShortcutController.set_mnemonics_modifiers(&self, gdk::ModifierType modifiers) @extern("gtk_shortcut_controller_set_mnemonics_modifiers");

<* Maps to set_scope *>
extern fn void ShortcutController.set_scope(&self, ShortcutScope scope) @extern("gtk_shortcut_controller_set_scope");


<* Maps to GtkShortcutLabel *>
distinct ShortcutLabel = void*;

fn Widget* ShortcutLabel.as_Widget(&self) => (Widget*)(self);


<* Maps to get_accelerator *>
extern fn ZString ShortcutLabel.get_accelerator(&self) @extern("gtk_shortcut_label_get_accelerator");

<* Maps to get_disabled_text *>
extern fn ZString ShortcutLabel.get_disabled_text(&self) @extern("gtk_shortcut_label_get_disabled_text");

<* Maps to set_accelerator *>
extern fn void ShortcutLabel.set_accelerator(&self, ZString accelerator) @extern("gtk_shortcut_label_set_accelerator");

<* Maps to set_disabled_text *>
extern fn void ShortcutLabel.set_disabled_text(&self, ZString disabled_text) @extern("gtk_shortcut_label_set_disabled_text");


<* Maps to GtkShortcutTrigger *>
distinct ShortcutTrigger = void*;

fn gobject::Object* ShortcutTrigger.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to compare *>
extern fn int ShortcutTrigger.compare(&self, ShortcutTrigger* trigger2) @extern("gtk_shortcut_trigger_compare");

<* Maps to equal *>
extern fn bool ShortcutTrigger.equal(&self, ShortcutTrigger* trigger2) @extern("gtk_shortcut_trigger_equal");

<* Maps to hash *>
extern fn uint ShortcutTrigger.hash(&self) @extern("gtk_shortcut_trigger_hash");

<* Maps to print *>
extern fn void ShortcutTrigger.print(&self, glib::String* string) @extern("gtk_shortcut_trigger_print");

<* Maps to print_label *>
extern fn bool ShortcutTrigger.print_label(&self, gdk::Display* display, glib::String* string) @extern("gtk_shortcut_trigger_print_label");

<* Maps to to_label *>
extern fn ZString* ShortcutTrigger.to_label(&self, gdk::Display* display) @extern("gtk_shortcut_trigger_to_label");

<* Maps to to_string *>
extern fn ZString* ShortcutTrigger.to_string(&self) @extern("gtk_shortcut_trigger_to_string");

<* Maps to trigger *>
extern fn gdk::KeyMatch ShortcutTrigger.trigger(&self, gdk::Event* event, bool enable_mnemonics) @extern("gtk_shortcut_trigger_trigger");


<* Maps to GtkShortcutsGroup *>
distinct ShortcutsGroup = void*;

fn Box* ShortcutsGroup.as_Box(&self) => (Box*)(self);


<* Maps to add_shortcut *>
extern fn void ShortcutsGroup.add_shortcut(&self, ShortcutsShortcut* shortcut) @extern("gtk_shortcuts_group_add_shortcut");


<* Maps to GtkShortcutsSection *>
distinct ShortcutsSection = void*;

fn Box* ShortcutsSection.as_Box(&self) => (Box*)(self);


<* Maps to add_group *>
extern fn void ShortcutsSection.add_group(&self, ShortcutsGroup* group) @extern("gtk_shortcuts_section_add_group");


<* Maps to GtkShortcutsShortcut *>
distinct ShortcutsShortcut = void*;

fn Widget* ShortcutsShortcut.as_Widget(&self) => (Widget*)(self);



<* Maps to GtkShortcutsWindow *>
distinct ShortcutsWindow = void*;

fn Window* ShortcutsWindow.as_Window(&self) => (Window*)(self);


<* Maps to add_section *>
extern fn void ShortcutsWindow.add_section(&self, ShortcutsSection* section) @extern("gtk_shortcuts_window_add_section");


<* Maps to GtkSignalAction *>
distinct SignalAction = void*;

fn ShortcutAction* SignalAction.as_ShortcutAction(&self) => (ShortcutAction*)(self);


<* Maps to get_signal_name *>
extern fn ZString SignalAction.get_signal_name(&self) @extern("gtk_signal_action_get_signal_name");


<* Maps to GtkSignalListItemFactory *>
distinct SignalListItemFactory = void*;

fn ListItemFactory* SignalListItemFactory.as_ListItemFactory(&self) => (ListItemFactory*)(self);



<* Maps to GtkSingleSelection *>
distinct SingleSelection = void*;

fn gobject::Object* SingleSelection.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_autoselect *>
extern fn bool SingleSelection.get_autoselect(&self) @extern("gtk_single_selection_get_autoselect");

<* Maps to get_can_unselect *>
extern fn bool SingleSelection.get_can_unselect(&self) @extern("gtk_single_selection_get_can_unselect");

<* Maps to get_model *>
extern fn gio::ListModel* SingleSelection.get_model(&self) @extern("gtk_single_selection_get_model");

<* Maps to get_selected *>
extern fn uint SingleSelection.get_selected(&self) @extern("gtk_single_selection_get_selected");

<* Maps to get_selected_item *>
extern fn gobject::Object* SingleSelection.get_selected_item(&self) @extern("gtk_single_selection_get_selected_item");

<* Maps to set_autoselect *>
extern fn void SingleSelection.set_autoselect(&self, bool autoselect) @extern("gtk_single_selection_set_autoselect");

<* Maps to set_can_unselect *>
extern fn void SingleSelection.set_can_unselect(&self, bool can_unselect) @extern("gtk_single_selection_set_can_unselect");

<* Maps to set_model *>
extern fn void SingleSelection.set_model(&self, gio::ListModel* model) @extern("gtk_single_selection_set_model");

<* Maps to set_selected *>
extern fn void SingleSelection.set_selected(&self, uint position) @extern("gtk_single_selection_set_selected");


<* Maps to GtkSizeGroup *>
distinct SizeGroup = void*;

fn gobject::Object* SizeGroup.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to add_widget *>
extern fn void SizeGroup.add_widget(&self, Widget* widget) @extern("gtk_size_group_add_widget");

<* Maps to get_mode *>
extern fn SizeGroupMode SizeGroup.get_mode(&self) @extern("gtk_size_group_get_mode");

<* Maps to get_widgets *>
extern fn glib::SList* SizeGroup.get_widgets(&self) @extern("gtk_size_group_get_widgets");

<* Maps to remove_widget *>
extern fn void SizeGroup.remove_widget(&self, Widget* widget) @extern("gtk_size_group_remove_widget");

<* Maps to set_mode *>
extern fn void SizeGroup.set_mode(&self, SizeGroupMode mode) @extern("gtk_size_group_set_mode");


<* Maps to GtkSliceListModel *>
distinct SliceListModel = void*;

fn gobject::Object* SliceListModel.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_model *>
extern fn gio::ListModel* SliceListModel.get_model(&self) @extern("gtk_slice_list_model_get_model");

<* Maps to get_offset *>
extern fn uint SliceListModel.get_offset(&self) @extern("gtk_slice_list_model_get_offset");

<* Maps to get_size *>
extern fn uint SliceListModel.get_size(&self) @extern("gtk_slice_list_model_get_size");

<* Maps to set_model *>
extern fn void SliceListModel.set_model(&self, gio::ListModel* model) @extern("gtk_slice_list_model_set_model");

<* Maps to set_offset *>
extern fn void SliceListModel.set_offset(&self, uint offset) @extern("gtk_slice_list_model_set_offset");

<* Maps to set_size *>
extern fn void SliceListModel.set_size(&self, uint size) @extern("gtk_slice_list_model_set_size");


<* Maps to  *>
distinct Snapshot = void*;

fn gdk::Snapshot* Snapshot.as_gdk_Snapshot(&self) => (gdk::Snapshot*)(self);


<* Maps to append_border *>
extern fn void Snapshot.append_border(&self, gsk::RoundedRect* outline, float border_width, gdk::Rgba border_color) @extern("gtk_snapshot_append_border");

<* Maps to append_cairo *>
extern fn cairo::Context* Snapshot.append_cairo(&self, graphene::Rect* bounds) @extern("gtk_snapshot_append_cairo");

<* Maps to append_color *>
extern fn void Snapshot.append_color(&self, gdk::Rgba* color, graphene::Rect* bounds) @extern("gtk_snapshot_append_color");

<* Maps to append_conic_gradient *>
extern fn void Snapshot.append_conic_gradient(&self, graphene::Rect* bounds, graphene::Point* center, float rotation, gsk::ColorStop stops, usz n_stops) @extern("gtk_snapshot_append_conic_gradient");

<* Maps to append_fill *>
extern fn void Snapshot.append_fill(&self, gsk::Path* path, gsk::FillRule fill_rule, gdk::Rgba* color) @extern("gtk_snapshot_append_fill");

<* Maps to append_inset_shadow *>
extern fn void Snapshot.append_inset_shadow(&self, gsk::RoundedRect* outline, gdk::Rgba* color, float dx, float dy, float spread, float blur_radius) @extern("gtk_snapshot_append_inset_shadow");

<* Maps to append_layout *>
extern fn void Snapshot.append_layout(&self, pango::Layout* layout, gdk::Rgba* color) @extern("gtk_snapshot_append_layout");

<* Maps to append_linear_gradient *>
extern fn void Snapshot.append_linear_gradient(&self, graphene::Rect* bounds, graphene::Point* start_point, graphene::Point* end_point, gsk::ColorStop stops, usz n_stops) @extern("gtk_snapshot_append_linear_gradient");

<* Maps to append_node *>
extern fn void Snapshot.append_node(&self, gsk::RenderNode* node) @extern("gtk_snapshot_append_node");

<* Maps to append_outset_shadow *>
extern fn void Snapshot.append_outset_shadow(&self, gsk::RoundedRect* outline, gdk::Rgba* color, float dx, float dy, float spread, float blur_radius) @extern("gtk_snapshot_append_outset_shadow");

<* Maps to append_radial_gradient *>
extern fn void Snapshot.append_radial_gradient(&self, graphene::Rect* bounds, graphene::Point* center, float hradius, float vradius, float start, float end, gsk::ColorStop stops, usz n_stops) @extern("gtk_snapshot_append_radial_gradient");

<* Maps to append_repeating_linear_gradient *>
extern fn void Snapshot.append_repeating_linear_gradient(&self, graphene::Rect* bounds, graphene::Point* start_point, graphene::Point* end_point, gsk::ColorStop stops, usz n_stops) @extern("gtk_snapshot_append_repeating_linear_gradient");

<* Maps to append_repeating_radial_gradient *>
extern fn void Snapshot.append_repeating_radial_gradient(&self, graphene::Rect* bounds, graphene::Point* center, float hradius, float vradius, float start, float end, gsk::ColorStop stops, usz n_stops) @extern("gtk_snapshot_append_repeating_radial_gradient");

<* Maps to append_scaled_texture *>
extern fn void Snapshot.append_scaled_texture(&self, gdk::Texture* texture, gsk::ScalingFilter filter, graphene::Rect* bounds) @extern("gtk_snapshot_append_scaled_texture");

<* Maps to append_stroke *>
extern fn void Snapshot.append_stroke(&self, gsk::Path* path, gsk::Stroke* stroke, gdk::Rgba* color) @extern("gtk_snapshot_append_stroke");

<* Maps to append_texture *>
extern fn void Snapshot.append_texture(&self, gdk::Texture* texture, graphene::Rect* bounds) @extern("gtk_snapshot_append_texture");

<* Maps to free_to_node *>
extern fn gsk::RenderNode* Snapshot.free_to_node(&self) @extern("gtk_snapshot_free_to_node");

<* Maps to free_to_paintable *>
extern fn gdk::Paintable* Snapshot.free_to_paintable(&self, graphene::Size* size) @extern("gtk_snapshot_free_to_paintable");

<* Maps to gl_shader_pop_texture *>
extern fn void Snapshot.gl_shader_pop_texture(&self) @extern("gtk_snapshot_gl_shader_pop_texture");

<* Maps to perspective *>
extern fn void Snapshot.perspective(&self, float depth) @extern("gtk_snapshot_perspective");

<* Maps to pop *>
extern fn void Snapshot.pop(&self) @extern("gtk_snapshot_pop");

<* Maps to push_blend *>
extern fn void Snapshot.push_blend(&self, gsk::BlendMode blend_mode) @extern("gtk_snapshot_push_blend");

<* Maps to push_blur *>
extern fn void Snapshot.push_blur(&self, double radius) @extern("gtk_snapshot_push_blur");

<* Maps to push_clip *>
extern fn void Snapshot.push_clip(&self, graphene::Rect* bounds) @extern("gtk_snapshot_push_clip");

<* Maps to push_color_matrix *>
extern fn void Snapshot.push_color_matrix(&self, graphene::Matrix* color_matrix, graphene::Vec4* color_offset) @extern("gtk_snapshot_push_color_matrix");

<* Maps to push_cross_fade *>
extern fn void Snapshot.push_cross_fade(&self, double progress) @extern("gtk_snapshot_push_cross_fade");

<* Maps to push_debug *>
extern fn void Snapshot.push_debug(&self, ZString message, any rest) @extern("gtk_snapshot_push_debug");

<* Maps to push_fill *>
extern fn void Snapshot.push_fill(&self, gsk::Path* path, gsk::FillRule fill_rule) @extern("gtk_snapshot_push_fill");

<* Maps to push_gl_shader *>
extern fn void Snapshot.push_gl_shader(&self, gsk::GLShader* shader, graphene::Rect* bounds, glib::Bytes* take_args) @extern("gtk_snapshot_push_gl_shader");

<* Maps to push_mask *>
extern fn void Snapshot.push_mask(&self, gsk::MaskMode mask_mode) @extern("gtk_snapshot_push_mask");

<* Maps to push_opacity *>
extern fn void Snapshot.push_opacity(&self, double opacity) @extern("gtk_snapshot_push_opacity");

<* Maps to push_repeat *>
extern fn void Snapshot.push_repeat(&self, graphene::Rect* bounds, graphene::Rect* child_bounds) @extern("gtk_snapshot_push_repeat");

<* Maps to push_rounded_clip *>
extern fn void Snapshot.push_rounded_clip(&self, gsk::RoundedRect* bounds) @extern("gtk_snapshot_push_rounded_clip");

<* Maps to push_shadow *>
extern fn void Snapshot.push_shadow(&self, gsk::Shadow shadow, usz n_shadows) @extern("gtk_snapshot_push_shadow");

<* Maps to push_stroke *>
extern fn void Snapshot.push_stroke(&self, gsk::Path* path, gsk::Stroke* stroke) @extern("gtk_snapshot_push_stroke");

<* Maps to render_background *>
extern fn void Snapshot.render_background(&self, StyleContext* context, double x, double y, double width, double height) @extern("gtk_snapshot_render_background");

<* Maps to render_focus *>
extern fn void Snapshot.render_focus(&self, StyleContext* context, double x, double y, double width, double height) @extern("gtk_snapshot_render_focus");

<* Maps to render_frame *>
extern fn void Snapshot.render_frame(&self, StyleContext* context, double x, double y, double width, double height) @extern("gtk_snapshot_render_frame");

<* Maps to render_insertion_cursor *>
extern fn void Snapshot.render_insertion_cursor(&self, StyleContext* context, double x, double y, pango::Layout* layout, int index, pango::Direction direction) @extern("gtk_snapshot_render_insertion_cursor");

<* Maps to render_layout *>
extern fn void Snapshot.render_layout(&self, StyleContext* context, double x, double y, pango::Layout* layout) @extern("gtk_snapshot_render_layout");

<* Maps to restore *>
extern fn void Snapshot.restore(&self) @extern("gtk_snapshot_restore");

<* Maps to rotate *>
extern fn void Snapshot.rotate(&self, float angle) @extern("gtk_snapshot_rotate");

<* Maps to rotate_3d *>
extern fn void Snapshot.rotate_3d(&self, float angle, graphene::Vec3* axis) @extern("gtk_snapshot_rotate_3d");

<* Maps to save *>
extern fn void Snapshot.save(&self) @extern("gtk_snapshot_save");

<* Maps to scale *>
extern fn void Snapshot.scale(&self, float factor_x, float factor_y) @extern("gtk_snapshot_scale");

<* Maps to scale_3d *>
extern fn void Snapshot.scale_3d(&self, float factor_x, float factor_y, float factor_z) @extern("gtk_snapshot_scale_3d");

<* Maps to to_node *>
extern fn gsk::RenderNode* Snapshot.to_node(&self) @extern("gtk_snapshot_to_node");

<* Maps to to_paintable *>
extern fn gdk::Paintable* Snapshot.to_paintable(&self, graphene::Size* size) @extern("gtk_snapshot_to_paintable");

<* Maps to transform *>
extern fn void Snapshot.transform(&self, gsk::Transform* transform) @extern("gtk_snapshot_transform");

<* Maps to transform_matrix *>
extern fn void Snapshot.transform_matrix(&self, graphene::Matrix* matrix) @extern("gtk_snapshot_transform_matrix");

<* Maps to translate *>
extern fn void Snapshot.translate(&self, graphene::Point* point) @extern("gtk_snapshot_translate");

<* Maps to translate_3d *>
extern fn void Snapshot.translate_3d(&self, graphene::Point3D* point) @extern("gtk_snapshot_translate_3d");


<* Maps to GtkSortListModel *>
distinct SortListModel = void*;

fn gobject::Object* SortListModel.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_incremental *>
extern fn bool SortListModel.get_incremental(&self) @extern("gtk_sort_list_model_get_incremental");

<* Maps to get_model *>
extern fn gio::ListModel* SortListModel.get_model(&self) @extern("gtk_sort_list_model_get_model");

<* Maps to get_pending *>
extern fn uint SortListModel.get_pending(&self) @extern("gtk_sort_list_model_get_pending");

<* Maps to get_section_sorter *>
extern fn Sorter* SortListModel.get_section_sorter(&self) @extern("gtk_sort_list_model_get_section_sorter");

<* Maps to get_sorter *>
extern fn Sorter* SortListModel.get_sorter(&self) @extern("gtk_sort_list_model_get_sorter");

<* Maps to set_incremental *>
extern fn void SortListModel.set_incremental(&self, bool incremental) @extern("gtk_sort_list_model_set_incremental");

<* Maps to set_model *>
extern fn void SortListModel.set_model(&self, gio::ListModel* model) @extern("gtk_sort_list_model_set_model");

<* Maps to set_section_sorter *>
extern fn void SortListModel.set_section_sorter(&self, Sorter* sorter) @extern("gtk_sort_list_model_set_section_sorter");

<* Maps to set_sorter *>
extern fn void SortListModel.set_sorter(&self, Sorter* sorter) @extern("gtk_sort_list_model_set_sorter");


<* Maps to GtkSorter *>
distinct Sorter = void*;

fn gobject::Object* Sorter.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to changed *>
extern fn void Sorter.changed(&self, SorterChange change) @extern("gtk_sorter_changed");

<* Maps to compare *>
extern fn Ordering Sorter.compare(&self, gobject::Object* item1, gobject::Object* item2) @extern("gtk_sorter_compare");

<* Maps to get_order *>
extern fn SorterOrder Sorter.get_order(&self) @extern("gtk_sorter_get_order");


<* Maps to GtkSpinButton *>
distinct SpinButton = void*;

fn Widget* SpinButton.as_Widget(&self) => (Widget*)(self);


<* Maps to configure *>
extern fn void SpinButton.configure(&self, Adjustment* adjustment, double climb_rate, uint digits) @extern("gtk_spin_button_configure");

<* Maps to get_activates_default *>
extern fn bool SpinButton.get_activates_default(&self) @extern("gtk_spin_button_get_activates_default");

<* Maps to get_adjustment *>
extern fn Adjustment* SpinButton.get_adjustment(&self) @extern("gtk_spin_button_get_adjustment");

<* Maps to get_climb_rate *>
extern fn double SpinButton.get_climb_rate(&self) @extern("gtk_spin_button_get_climb_rate");

<* Maps to get_digits *>
extern fn uint SpinButton.get_digits(&self) @extern("gtk_spin_button_get_digits");

<* Maps to get_increments *>
extern fn void SpinButton.get_increments(&self, double* step, double* page) @extern("gtk_spin_button_get_increments");

<* Maps to get_numeric *>
extern fn bool SpinButton.get_numeric(&self) @extern("gtk_spin_button_get_numeric");

<* Maps to get_range *>
extern fn void SpinButton.get_range(&self, double* min, double* max) @extern("gtk_spin_button_get_range");

<* Maps to get_snap_to_ticks *>
extern fn bool SpinButton.get_snap_to_ticks(&self) @extern("gtk_spin_button_get_snap_to_ticks");

<* Maps to get_update_policy *>
extern fn SpinButtonUpdatePolicy SpinButton.get_update_policy(&self) @extern("gtk_spin_button_get_update_policy");

<* Maps to get_value *>
extern fn double SpinButton.get_value(&self) @extern("gtk_spin_button_get_value");

<* Maps to get_value_as_int *>
extern fn int SpinButton.get_value_as_int(&self) @extern("gtk_spin_button_get_value_as_int");

<* Maps to get_wrap *>
extern fn bool SpinButton.get_wrap(&self) @extern("gtk_spin_button_get_wrap");

<* Maps to set_activates_default *>
extern fn void SpinButton.set_activates_default(&self, bool activates_default) @extern("gtk_spin_button_set_activates_default");

<* Maps to set_adjustment *>
extern fn void SpinButton.set_adjustment(&self, Adjustment* adjustment) @extern("gtk_spin_button_set_adjustment");

<* Maps to set_climb_rate *>
extern fn void SpinButton.set_climb_rate(&self, double climb_rate) @extern("gtk_spin_button_set_climb_rate");

<* Maps to set_digits *>
extern fn void SpinButton.set_digits(&self, uint digits) @extern("gtk_spin_button_set_digits");

<* Maps to set_increments *>
extern fn void SpinButton.set_increments(&self, double step, double page) @extern("gtk_spin_button_set_increments");

<* Maps to set_numeric *>
extern fn void SpinButton.set_numeric(&self, bool numeric) @extern("gtk_spin_button_set_numeric");

<* Maps to set_range *>
extern fn void SpinButton.set_range(&self, double min, double max) @extern("gtk_spin_button_set_range");

<* Maps to set_snap_to_ticks *>
extern fn void SpinButton.set_snap_to_ticks(&self, bool snap_to_ticks) @extern("gtk_spin_button_set_snap_to_ticks");

<* Maps to set_update_policy *>
extern fn void SpinButton.set_update_policy(&self, SpinButtonUpdatePolicy policy) @extern("gtk_spin_button_set_update_policy");

<* Maps to set_value *>
extern fn void SpinButton.set_value(&self, double value) @extern("gtk_spin_button_set_value");

<* Maps to set_wrap *>
extern fn void SpinButton.set_wrap(&self, bool wrap) @extern("gtk_spin_button_set_wrap");

<* Maps to spin *>
extern fn void SpinButton.spin(&self, SpinType direction, double increment) @extern("gtk_spin_button_spin");

<* Maps to update *>
extern fn void SpinButton.update(&self) @extern("gtk_spin_button_update");


<* Maps to GtkSpinner *>
distinct Spinner = void*;

fn Widget* Spinner.as_Widget(&self) => (Widget*)(self);


<* Maps to get_spinning *>
extern fn bool Spinner.get_spinning(&self) @extern("gtk_spinner_get_spinning");

<* Maps to set_spinning *>
extern fn void Spinner.set_spinning(&self, bool spinning) @extern("gtk_spinner_set_spinning");

<* Maps to start *>
extern fn void Spinner.start(&self) @extern("gtk_spinner_start");

<* Maps to stop *>
extern fn void Spinner.stop(&self) @extern("gtk_spinner_stop");


<* Maps to GtkStack *>
distinct Stack = void*;

fn Widget* Stack.as_Widget(&self) => (Widget*)(self);


<* Maps to add_child *>
extern fn StackPage* Stack.add_child(&self, Widget* child) @extern("gtk_stack_add_child");

<* Maps to add_named *>
extern fn StackPage* Stack.add_named(&self, Widget* child, ZString name) @extern("gtk_stack_add_named");

<* Maps to add_titled *>
extern fn StackPage* Stack.add_titled(&self, Widget* child, ZString name, ZString title) @extern("gtk_stack_add_titled");

<* Maps to get_child_by_name *>
extern fn Widget* Stack.get_child_by_name(&self, ZString name) @extern("gtk_stack_get_child_by_name");

<* Maps to get_hhomogeneous *>
extern fn bool Stack.get_hhomogeneous(&self) @extern("gtk_stack_get_hhomogeneous");

<* Maps to get_interpolate_size *>
extern fn bool Stack.get_interpolate_size(&self) @extern("gtk_stack_get_interpolate_size");

<* Maps to get_page *>
extern fn StackPage* Stack.get_page(&self, Widget* child) @extern("gtk_stack_get_page");

<* Maps to get_pages *>
extern fn SelectionModel* Stack.get_pages(&self) @extern("gtk_stack_get_pages");

<* Maps to get_transition_duration *>
extern fn uint Stack.get_transition_duration(&self) @extern("gtk_stack_get_transition_duration");

<* Maps to get_transition_running *>
extern fn bool Stack.get_transition_running(&self) @extern("gtk_stack_get_transition_running");

<* Maps to get_transition_type *>
extern fn StackTransitionType Stack.get_transition_type(&self) @extern("gtk_stack_get_transition_type");

<* Maps to get_vhomogeneous *>
extern fn bool Stack.get_vhomogeneous(&self) @extern("gtk_stack_get_vhomogeneous");

<* Maps to get_visible_child *>
extern fn Widget* Stack.get_visible_child(&self) @extern("gtk_stack_get_visible_child");

<* Maps to get_visible_child_name *>
extern fn ZString Stack.get_visible_child_name(&self) @extern("gtk_stack_get_visible_child_name");

<* Maps to remove *>
extern fn void Stack.remove(&self, Widget* child) @extern("gtk_stack_remove");

<* Maps to set_hhomogeneous *>
extern fn void Stack.set_hhomogeneous(&self, bool hhomogeneous) @extern("gtk_stack_set_hhomogeneous");

<* Maps to set_interpolate_size *>
extern fn void Stack.set_interpolate_size(&self, bool interpolate_size) @extern("gtk_stack_set_interpolate_size");

<* Maps to set_transition_duration *>
extern fn void Stack.set_transition_duration(&self, uint duration) @extern("gtk_stack_set_transition_duration");

<* Maps to set_transition_type *>
extern fn void Stack.set_transition_type(&self, StackTransitionType transition) @extern("gtk_stack_set_transition_type");

<* Maps to set_vhomogeneous *>
extern fn void Stack.set_vhomogeneous(&self, bool vhomogeneous) @extern("gtk_stack_set_vhomogeneous");

<* Maps to set_visible_child *>
extern fn void Stack.set_visible_child(&self, Widget* child) @extern("gtk_stack_set_visible_child");

<* Maps to set_visible_child_full *>
extern fn void Stack.set_visible_child_full(&self, ZString name, StackTransitionType transition) @extern("gtk_stack_set_visible_child_full");

<* Maps to set_visible_child_name *>
extern fn void Stack.set_visible_child_name(&self, ZString name) @extern("gtk_stack_set_visible_child_name");


<* Maps to GtkStackPage *>
distinct StackPage = void*;

fn gobject::Object* StackPage.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_child *>
extern fn Widget* StackPage.get_child(&self) @extern("gtk_stack_page_get_child");

<* Maps to get_icon_name *>
extern fn ZString StackPage.get_icon_name(&self) @extern("gtk_stack_page_get_icon_name");

<* Maps to get_name *>
extern fn ZString StackPage.get_name(&self) @extern("gtk_stack_page_get_name");

<* Maps to get_needs_attention *>
extern fn bool StackPage.get_needs_attention(&self) @extern("gtk_stack_page_get_needs_attention");

<* Maps to get_title *>
extern fn ZString StackPage.get_title(&self) @extern("gtk_stack_page_get_title");

<* Maps to get_use_underline *>
extern fn bool StackPage.get_use_underline(&self) @extern("gtk_stack_page_get_use_underline");

<* Maps to get_visible *>
extern fn bool StackPage.get_visible(&self) @extern("gtk_stack_page_get_visible");

<* Maps to set_icon_name *>
extern fn void StackPage.set_icon_name(&self, ZString setting) @extern("gtk_stack_page_set_icon_name");

<* Maps to set_name *>
extern fn void StackPage.set_name(&self, ZString setting) @extern("gtk_stack_page_set_name");

<* Maps to set_needs_attention *>
extern fn void StackPage.set_needs_attention(&self, bool setting) @extern("gtk_stack_page_set_needs_attention");

<* Maps to set_title *>
extern fn void StackPage.set_title(&self, ZString setting) @extern("gtk_stack_page_set_title");

<* Maps to set_use_underline *>
extern fn void StackPage.set_use_underline(&self, bool setting) @extern("gtk_stack_page_set_use_underline");

<* Maps to set_visible *>
extern fn void StackPage.set_visible(&self, bool visible) @extern("gtk_stack_page_set_visible");


<* Maps to GtkStackSidebar *>
distinct StackSidebar = void*;

fn Widget* StackSidebar.as_Widget(&self) => (Widget*)(self);


<* Maps to get_stack *>
extern fn Stack* StackSidebar.get_stack(&self) @extern("gtk_stack_sidebar_get_stack");

<* Maps to set_stack *>
extern fn void StackSidebar.set_stack(&self, Stack* stack) @extern("gtk_stack_sidebar_set_stack");


<* Maps to GtkStackSwitcher *>
distinct StackSwitcher = void*;

fn Widget* StackSwitcher.as_Widget(&self) => (Widget*)(self);


<* Maps to get_stack *>
extern fn Stack* StackSwitcher.get_stack(&self) @extern("gtk_stack_switcher_get_stack");

<* Maps to set_stack *>
extern fn void StackSwitcher.set_stack(&self, Stack* stack) @extern("gtk_stack_switcher_set_stack");


<* Maps to GtkStatusbar *>
distinct Statusbar = void*;

fn Widget* Statusbar.as_Widget(&self) => (Widget*)(self);


<* Maps to get_context_id *>
extern fn uint Statusbar.get_context_id(&self, ZString context_description) @extern("gtk_statusbar_get_context_id");

<* Maps to pop *>
extern fn void Statusbar.pop(&self, uint context_id) @extern("gtk_statusbar_pop");

<* Maps to push *>
extern fn uint Statusbar.push(&self, uint context_id, ZString text) @extern("gtk_statusbar_push");

<* Maps to remove *>
extern fn void Statusbar.remove(&self, uint context_id, uint message_id) @extern("gtk_statusbar_remove");

<* Maps to remove_all *>
extern fn void Statusbar.remove_all(&self, uint context_id) @extern("gtk_statusbar_remove_all");


<* Maps to GtkStringFilter *>
distinct StringFilter = void*;

fn Filter* StringFilter.as_Filter(&self) => (Filter*)(self);


<* Maps to get_expression *>
extern fn Expression* StringFilter.get_expression(&self) @extern("gtk_string_filter_get_expression");

<* Maps to get_ignore_case *>
extern fn bool StringFilter.get_ignore_case(&self) @extern("gtk_string_filter_get_ignore_case");

<* Maps to get_match_mode *>
extern fn StringFilterMatchMode StringFilter.get_match_mode(&self) @extern("gtk_string_filter_get_match_mode");

<* Maps to get_search *>
extern fn ZString StringFilter.get_search(&self) @extern("gtk_string_filter_get_search");

<* Maps to set_expression *>
extern fn void StringFilter.set_expression(&self, Expression* expression) @extern("gtk_string_filter_set_expression");

<* Maps to set_ignore_case *>
extern fn void StringFilter.set_ignore_case(&self, bool ignore_case) @extern("gtk_string_filter_set_ignore_case");

<* Maps to set_match_mode *>
extern fn void StringFilter.set_match_mode(&self, StringFilterMatchMode mode) @extern("gtk_string_filter_set_match_mode");

<* Maps to set_search *>
extern fn void StringFilter.set_search(&self, ZString search) @extern("gtk_string_filter_set_search");


<* Maps to GtkStringList *>
distinct StringList = void*;

fn gobject::Object* StringList.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to append *>
extern fn void StringList.append(&self, ZString string) @extern("gtk_string_list_append");

<* Maps to get_string *>
extern fn ZString StringList.get_string(&self, uint position) @extern("gtk_string_list_get_string");

<* Maps to remove *>
extern fn void StringList.remove(&self, uint position) @extern("gtk_string_list_remove");

<* Maps to splice *>
extern fn void StringList.splice(&self, uint position, uint n_removals, ZString* additions) @extern("gtk_string_list_splice");

<* Maps to take *>
extern fn void StringList.take(&self, ZString* string) @extern("gtk_string_list_take");


<* Maps to GtkStringObject *>
distinct StringObject = void*;

fn gobject::Object* StringObject.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_string *>
extern fn ZString StringObject.get_string(&self) @extern("gtk_string_object_get_string");


<* Maps to GtkStringSorter *>
distinct StringSorter = void*;

fn Sorter* StringSorter.as_Sorter(&self) => (Sorter*)(self);


<* Maps to get_collation *>
extern fn Collation StringSorter.get_collation(&self) @extern("gtk_string_sorter_get_collation");

<* Maps to get_expression *>
extern fn Expression* StringSorter.get_expression(&self) @extern("gtk_string_sorter_get_expression");

<* Maps to get_ignore_case *>
extern fn bool StringSorter.get_ignore_case(&self) @extern("gtk_string_sorter_get_ignore_case");

<* Maps to set_collation *>
extern fn void StringSorter.set_collation(&self, Collation collation) @extern("gtk_string_sorter_set_collation");

<* Maps to set_expression *>
extern fn void StringSorter.set_expression(&self, Expression* expression) @extern("gtk_string_sorter_set_expression");

<* Maps to set_ignore_case *>
extern fn void StringSorter.set_ignore_case(&self, bool ignore_case) @extern("gtk_string_sorter_set_ignore_case");


<* Maps to GtkStyleContext *>
distinct StyleContext = void*;

fn gobject::Object* StyleContext.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to add_class *>
extern fn void StyleContext.add_class(&self, ZString class_name) @extern("gtk_style_context_add_class");

<* Maps to add_provider *>
extern fn void StyleContext.add_provider(&self, StyleProvider* provider, uint priority) @extern("gtk_style_context_add_provider");

<* Maps to get_border *>
extern fn void StyleContext.get_border(&self, Border* border) @extern("gtk_style_context_get_border");

<* Maps to get_color *>
extern fn void StyleContext.get_color(&self, gdk::Rgba* color) @extern("gtk_style_context_get_color");

<* Maps to get_display *>
extern fn gdk::Display* StyleContext.get_display(&self) @extern("gtk_style_context_get_display");

<* Maps to get_margin *>
extern fn void StyleContext.get_margin(&self, Border* margin) @extern("gtk_style_context_get_margin");

<* Maps to get_padding *>
extern fn void StyleContext.get_padding(&self, Border* padding) @extern("gtk_style_context_get_padding");

<* Maps to get_scale *>
extern fn int StyleContext.get_scale(&self) @extern("gtk_style_context_get_scale");

<* Maps to get_state *>
extern fn StateFlags StyleContext.get_state(&self) @extern("gtk_style_context_get_state");

<* Maps to has_class *>
extern fn bool StyleContext.has_class(&self, ZString class_name) @extern("gtk_style_context_has_class");

<* Maps to lookup_color *>
extern fn bool StyleContext.lookup_color(&self, ZString color_name, gdk::Rgba* color) @extern("gtk_style_context_lookup_color");

<* Maps to remove_class *>
extern fn void StyleContext.remove_class(&self, ZString class_name) @extern("gtk_style_context_remove_class");

<* Maps to remove_provider *>
extern fn void StyleContext.remove_provider(&self, StyleProvider* provider) @extern("gtk_style_context_remove_provider");

<* Maps to restore *>
extern fn void StyleContext.restore(&self) @extern("gtk_style_context_restore");

<* Maps to save *>
extern fn void StyleContext.save(&self) @extern("gtk_style_context_save");

<* Maps to set_display *>
extern fn void StyleContext.set_display(&self, gdk::Display* display) @extern("gtk_style_context_set_display");

<* Maps to set_scale *>
extern fn void StyleContext.set_scale(&self, int scale) @extern("gtk_style_context_set_scale");

<* Maps to set_state *>
extern fn void StyleContext.set_state(&self, StateFlags flags) @extern("gtk_style_context_set_state");

<* Maps to to_string *>
extern fn ZString* StyleContext.to_string(&self, StyleContextPrintFlags flags) @extern("gtk_style_context_to_string");


<* Maps to GtkSwitch *>
distinct Switch = void*;

fn Widget* Switch.as_Widget(&self) => (Widget*)(self);


<* Maps to get_active *>
extern fn bool Switch.get_active(&self) @extern("gtk_switch_get_active");

<* Maps to get_state *>
extern fn bool Switch.get_state(&self) @extern("gtk_switch_get_state");

<* Maps to set_active *>
extern fn void Switch.set_active(&self, bool is_active) @extern("gtk_switch_set_active");

<* Maps to set_state *>
extern fn void Switch.set_state(&self, bool state) @extern("gtk_switch_set_state");


<* Maps to GtkText *>
distinct Text = void*;

fn Widget* Text.as_Widget(&self) => (Widget*)(self);


<* Maps to compute_cursor_extents *>
extern fn void Text.compute_cursor_extents(&self, usz position, graphene::Rect* strong, graphene::Rect* weak) @extern("gtk_text_compute_cursor_extents");

<* Maps to get_activates_default *>
extern fn bool Text.get_activates_default(&self) @extern("gtk_text_get_activates_default");

<* Maps to get_attributes *>
extern fn pango::AttrList* Text.get_attributes(&self) @extern("gtk_text_get_attributes");

<* Maps to get_buffer *>
extern fn EntryBuffer* Text.get_buffer(&self) @extern("gtk_text_get_buffer");

<* Maps to get_enable_emoji_completion *>
extern fn bool Text.get_enable_emoji_completion(&self) @extern("gtk_text_get_enable_emoji_completion");

<* Maps to get_extra_menu *>
extern fn gio::MenuModel* Text.get_extra_menu(&self) @extern("gtk_text_get_extra_menu");

<* Maps to get_input_hints *>
extern fn InputHints Text.get_input_hints(&self) @extern("gtk_text_get_input_hints");

<* Maps to get_input_purpose *>
extern fn InputPurpose Text.get_input_purpose(&self) @extern("gtk_text_get_input_purpose");

<* Maps to get_invisible_char *>
extern fn uint Text.get_invisible_char(&self) @extern("gtk_text_get_invisible_char");

<* Maps to get_max_length *>
extern fn int Text.get_max_length(&self) @extern("gtk_text_get_max_length");

<* Maps to get_overwrite_mode *>
extern fn bool Text.get_overwrite_mode(&self) @extern("gtk_text_get_overwrite_mode");

<* Maps to get_placeholder_text *>
extern fn ZString Text.get_placeholder_text(&self) @extern("gtk_text_get_placeholder_text");

<* Maps to get_propagate_text_width *>
extern fn bool Text.get_propagate_text_width(&self) @extern("gtk_text_get_propagate_text_width");

<* Maps to get_tabs *>
extern fn pango::TabArray* Text.get_tabs(&self) @extern("gtk_text_get_tabs");

<* Maps to get_text_length *>
extern fn ushort Text.get_text_length(&self) @extern("gtk_text_get_text_length");

<* Maps to get_truncate_multiline *>
extern fn bool Text.get_truncate_multiline(&self) @extern("gtk_text_get_truncate_multiline");

<* Maps to get_visibility *>
extern fn bool Text.get_visibility(&self) @extern("gtk_text_get_visibility");

<* Maps to grab_focus_without_selecting *>
extern fn bool Text.grab_focus_without_selecting(&self) @extern("gtk_text_grab_focus_without_selecting");

<* Maps to set_activates_default *>
extern fn void Text.set_activates_default(&self, bool activates) @extern("gtk_text_set_activates_default");

<* Maps to set_attributes *>
extern fn void Text.set_attributes(&self, pango::AttrList* attrs) @extern("gtk_text_set_attributes");

<* Maps to set_buffer *>
extern fn void Text.set_buffer(&self, EntryBuffer* buffer) @extern("gtk_text_set_buffer");

<* Maps to set_enable_emoji_completion *>
extern fn void Text.set_enable_emoji_completion(&self, bool enable_emoji_completion) @extern("gtk_text_set_enable_emoji_completion");

<* Maps to set_extra_menu *>
extern fn void Text.set_extra_menu(&self, gio::MenuModel* model) @extern("gtk_text_set_extra_menu");

<* Maps to set_input_hints *>
extern fn void Text.set_input_hints(&self, InputHints hints) @extern("gtk_text_set_input_hints");

<* Maps to set_input_purpose *>
extern fn void Text.set_input_purpose(&self, InputPurpose purpose) @extern("gtk_text_set_input_purpose");

<* Maps to set_invisible_char *>
extern fn void Text.set_invisible_char(&self, uint ch) @extern("gtk_text_set_invisible_char");

<* Maps to set_max_length *>
extern fn void Text.set_max_length(&self, int length) @extern("gtk_text_set_max_length");

<* Maps to set_overwrite_mode *>
extern fn void Text.set_overwrite_mode(&self, bool overwrite) @extern("gtk_text_set_overwrite_mode");

<* Maps to set_placeholder_text *>
extern fn void Text.set_placeholder_text(&self, ZString text) @extern("gtk_text_set_placeholder_text");

<* Maps to set_propagate_text_width *>
extern fn void Text.set_propagate_text_width(&self, bool propagate_text_width) @extern("gtk_text_set_propagate_text_width");

<* Maps to set_tabs *>
extern fn void Text.set_tabs(&self, pango::TabArray* tabs) @extern("gtk_text_set_tabs");

<* Maps to set_truncate_multiline *>
extern fn void Text.set_truncate_multiline(&self, bool truncate_multiline) @extern("gtk_text_set_truncate_multiline");

<* Maps to set_visibility *>
extern fn void Text.set_visibility(&self, bool visible) @extern("gtk_text_set_visibility");

<* Maps to unset_invisible_char *>
extern fn void Text.unset_invisible_char(&self) @extern("gtk_text_unset_invisible_char");


<* Maps to GtkTextBuffer *>
distinct TextBuffer = void*;

fn gobject::Object* TextBuffer.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to add_commit_notify *>
extern fn uint TextBuffer.add_commit_notify(&self, TextBufferNotifyFlags flags, TextBufferCommitNotify commit_notify, void* user_data, glib::DestroyNotify destroy) @extern("gtk_text_buffer_add_commit_notify");

<* Maps to add_mark *>
extern fn void TextBuffer.add_mark(&self, TextMark* mark, TextIter* where) @extern("gtk_text_buffer_add_mark");

<* Maps to add_selection_clipboard *>
extern fn void TextBuffer.add_selection_clipboard(&self, gdk::Clipboard* clipboard) @extern("gtk_text_buffer_add_selection_clipboard");

<* Maps to apply_tag *>
extern fn void TextBuffer.apply_tag(&self, TextTag* tag, TextIter* start, TextIter* end) @extern("gtk_text_buffer_apply_tag");

<* Maps to apply_tag_by_name *>
extern fn void TextBuffer.apply_tag_by_name(&self, ZString name, TextIter* start, TextIter* end) @extern("gtk_text_buffer_apply_tag_by_name");

<* Maps to backspace *>
extern fn bool TextBuffer.backspace(&self, TextIter* iter, bool interactive, bool default_editable) @extern("gtk_text_buffer_backspace");

<* Maps to begin_irreversible_action *>
extern fn void TextBuffer.begin_irreversible_action(&self) @extern("gtk_text_buffer_begin_irreversible_action");

<* Maps to begin_user_action *>
extern fn void TextBuffer.begin_user_action(&self) @extern("gtk_text_buffer_begin_user_action");

<* Maps to copy_clipboard *>
extern fn void TextBuffer.copy_clipboard(&self, gdk::Clipboard* clipboard) @extern("gtk_text_buffer_copy_clipboard");

<* Maps to create_child_anchor *>
extern fn TextChildAnchor* TextBuffer.create_child_anchor(&self, TextIter* iter) @extern("gtk_text_buffer_create_child_anchor");

<* Maps to create_mark *>
extern fn TextMark* TextBuffer.create_mark(&self, ZString mark_name, TextIter* where, bool left_gravity) @extern("gtk_text_buffer_create_mark");

<* Maps to create_tag *>
extern fn TextTag* TextBuffer.create_tag(&self, ZString tag_name, ZString first_property_name, any rest) @extern("gtk_text_buffer_create_tag");

<* Maps to cut_clipboard *>
extern fn void TextBuffer.cut_clipboard(&self, gdk::Clipboard* clipboard, bool default_editable) @extern("gtk_text_buffer_cut_clipboard");

<* Maps to delete *>
extern fn void TextBuffer.delete(&self, TextIter* start, TextIter* end) @extern("gtk_text_buffer_delete");

<* Maps to delete_interactive *>
extern fn bool TextBuffer.delete_interactive(&self, TextIter* start_iter, TextIter* end_iter, bool default_editable) @extern("gtk_text_buffer_delete_interactive");

<* Maps to delete_mark *>
extern fn void TextBuffer.delete_mark(&self, TextMark* mark) @extern("gtk_text_buffer_delete_mark");

<* Maps to delete_mark_by_name *>
extern fn void TextBuffer.delete_mark_by_name(&self, ZString name) @extern("gtk_text_buffer_delete_mark_by_name");

<* Maps to delete_selection *>
extern fn bool TextBuffer.delete_selection(&self, bool interactive, bool default_editable) @extern("gtk_text_buffer_delete_selection");

<* Maps to end_irreversible_action *>
extern fn void TextBuffer.end_irreversible_action(&self) @extern("gtk_text_buffer_end_irreversible_action");

<* Maps to end_user_action *>
extern fn void TextBuffer.end_user_action(&self) @extern("gtk_text_buffer_end_user_action");

<* Maps to get_bounds *>
extern fn void TextBuffer.get_bounds(&self, TextIter* start, TextIter* end) @extern("gtk_text_buffer_get_bounds");

<* Maps to get_can_redo *>
extern fn bool TextBuffer.get_can_redo(&self) @extern("gtk_text_buffer_get_can_redo");

<* Maps to get_can_undo *>
extern fn bool TextBuffer.get_can_undo(&self) @extern("gtk_text_buffer_get_can_undo");

<* Maps to get_char_count *>
extern fn int TextBuffer.get_char_count(&self) @extern("gtk_text_buffer_get_char_count");

<* Maps to get_enable_undo *>
extern fn bool TextBuffer.get_enable_undo(&self) @extern("gtk_text_buffer_get_enable_undo");

<* Maps to get_end_iter *>
extern fn void TextBuffer.get_end_iter(&self, TextIter* iter) @extern("gtk_text_buffer_get_end_iter");

<* Maps to get_has_selection *>
extern fn bool TextBuffer.get_has_selection(&self) @extern("gtk_text_buffer_get_has_selection");

<* Maps to get_insert *>
extern fn TextMark* TextBuffer.get_insert(&self) @extern("gtk_text_buffer_get_insert");

<* Maps to get_iter_at_child_anchor *>
extern fn void TextBuffer.get_iter_at_child_anchor(&self, TextIter* iter, TextChildAnchor* anchor) @extern("gtk_text_buffer_get_iter_at_child_anchor");

<* Maps to get_iter_at_line *>
extern fn bool TextBuffer.get_iter_at_line(&self, TextIter* iter, int line_number) @extern("gtk_text_buffer_get_iter_at_line");

<* Maps to get_iter_at_line_index *>
extern fn bool TextBuffer.get_iter_at_line_index(&self, TextIter* iter, int line_number, int byte_index) @extern("gtk_text_buffer_get_iter_at_line_index");

<* Maps to get_iter_at_line_offset *>
extern fn bool TextBuffer.get_iter_at_line_offset(&self, TextIter* iter, int line_number, int char_offset) @extern("gtk_text_buffer_get_iter_at_line_offset");

<* Maps to get_iter_at_mark *>
extern fn void TextBuffer.get_iter_at_mark(&self, TextIter* iter, TextMark* mark) @extern("gtk_text_buffer_get_iter_at_mark");

<* Maps to get_iter_at_offset *>
extern fn void TextBuffer.get_iter_at_offset(&self, TextIter* iter, int char_offset) @extern("gtk_text_buffer_get_iter_at_offset");

<* Maps to get_line_count *>
extern fn int TextBuffer.get_line_count(&self) @extern("gtk_text_buffer_get_line_count");

<* Maps to get_mark *>
extern fn TextMark* TextBuffer.get_mark(&self, ZString name) @extern("gtk_text_buffer_get_mark");

<* Maps to get_max_undo_levels *>
extern fn uint TextBuffer.get_max_undo_levels(&self) @extern("gtk_text_buffer_get_max_undo_levels");

<* Maps to get_modified *>
extern fn bool TextBuffer.get_modified(&self) @extern("gtk_text_buffer_get_modified");

<* Maps to get_selection_bound *>
extern fn TextMark* TextBuffer.get_selection_bound(&self) @extern("gtk_text_buffer_get_selection_bound");

<* Maps to get_selection_bounds *>
extern fn bool TextBuffer.get_selection_bounds(&self, TextIter* start, TextIter* end) @extern("gtk_text_buffer_get_selection_bounds");

<* Maps to get_selection_content *>
extern fn gdk::ContentProvider* TextBuffer.get_selection_content(&self) @extern("gtk_text_buffer_get_selection_content");

<* Maps to get_slice *>
extern fn ZString* TextBuffer.get_slice(&self, TextIter* start, TextIter* end, bool include_hidden_chars) @extern("gtk_text_buffer_get_slice");

<* Maps to get_start_iter *>
extern fn void TextBuffer.get_start_iter(&self, TextIter* iter) @extern("gtk_text_buffer_get_start_iter");

<* Maps to get_tag_table *>
extern fn TextTagTable* TextBuffer.get_tag_table(&self) @extern("gtk_text_buffer_get_tag_table");

<* Maps to get_text *>
extern fn ZString* TextBuffer.get_text(&self, TextIter* start, TextIter* end, bool include_hidden_chars) @extern("gtk_text_buffer_get_text");

<* Maps to insert *>
extern fn void TextBuffer.insert(&self, TextIter* iter, ZString text, int len) @extern("gtk_text_buffer_insert");

<* Maps to insert_at_cursor *>
extern fn void TextBuffer.insert_at_cursor(&self, ZString text, int len) @extern("gtk_text_buffer_insert_at_cursor");

<* Maps to insert_child_anchor *>
extern fn void TextBuffer.insert_child_anchor(&self, TextIter* iter, TextChildAnchor* anchor) @extern("gtk_text_buffer_insert_child_anchor");

<* Maps to insert_interactive *>
extern fn bool TextBuffer.insert_interactive(&self, TextIter* iter, ZString text, int len, bool default_editable) @extern("gtk_text_buffer_insert_interactive");

<* Maps to insert_interactive_at_cursor *>
extern fn bool TextBuffer.insert_interactive_at_cursor(&self, ZString text, int len, bool default_editable) @extern("gtk_text_buffer_insert_interactive_at_cursor");

<* Maps to insert_markup *>
extern fn void TextBuffer.insert_markup(&self, TextIter* iter, ZString markup, int len) @extern("gtk_text_buffer_insert_markup");

<* Maps to insert_paintable *>
extern fn void TextBuffer.insert_paintable(&self, TextIter* iter, gdk::Paintable* paintable) @extern("gtk_text_buffer_insert_paintable");

<* Maps to insert_range *>
extern fn void TextBuffer.insert_range(&self, TextIter* iter, TextIter* start, TextIter* end) @extern("gtk_text_buffer_insert_range");

<* Maps to insert_range_interactive *>
extern fn bool TextBuffer.insert_range_interactive(&self, TextIter* iter, TextIter* start, TextIter* end, bool default_editable) @extern("gtk_text_buffer_insert_range_interactive");

<* Maps to insert_with_tags *>
extern fn void TextBuffer.insert_with_tags(&self, TextIter* iter, ZString text, int len, TextTag* first_tag, any rest) @extern("gtk_text_buffer_insert_with_tags");

<* Maps to insert_with_tags_by_name *>
extern fn void TextBuffer.insert_with_tags_by_name(&self, TextIter* iter, ZString text, int len, ZString first_tag_name, any rest) @extern("gtk_text_buffer_insert_with_tags_by_name");

<* Maps to move_mark *>
extern fn void TextBuffer.move_mark(&self, TextMark* mark, TextIter* where) @extern("gtk_text_buffer_move_mark");

<* Maps to move_mark_by_name *>
extern fn void TextBuffer.move_mark_by_name(&self, ZString name, TextIter* where) @extern("gtk_text_buffer_move_mark_by_name");

<* Maps to paste_clipboard *>
extern fn void TextBuffer.paste_clipboard(&self, gdk::Clipboard* clipboard, TextIter* override_location, bool default_editable) @extern("gtk_text_buffer_paste_clipboard");

<* Maps to place_cursor *>
extern fn void TextBuffer.place_cursor(&self, TextIter* where) @extern("gtk_text_buffer_place_cursor");

<* Maps to redo *>
extern fn void TextBuffer.redo(&self) @extern("gtk_text_buffer_redo");

<* Maps to remove_all_tags *>
extern fn void TextBuffer.remove_all_tags(&self, TextIter* start, TextIter* end) @extern("gtk_text_buffer_remove_all_tags");

<* Maps to remove_commit_notify *>
extern fn void TextBuffer.remove_commit_notify(&self, uint commit_notify_handler) @extern("gtk_text_buffer_remove_commit_notify");

<* Maps to remove_selection_clipboard *>
extern fn void TextBuffer.remove_selection_clipboard(&self, gdk::Clipboard* clipboard) @extern("gtk_text_buffer_remove_selection_clipboard");

<* Maps to remove_tag *>
extern fn void TextBuffer.remove_tag(&self, TextTag* tag, TextIter* start, TextIter* end) @extern("gtk_text_buffer_remove_tag");

<* Maps to remove_tag_by_name *>
extern fn void TextBuffer.remove_tag_by_name(&self, ZString name, TextIter* start, TextIter* end) @extern("gtk_text_buffer_remove_tag_by_name");

<* Maps to select_range *>
extern fn void TextBuffer.select_range(&self, TextIter* ins, TextIter* bound) @extern("gtk_text_buffer_select_range");

<* Maps to set_enable_undo *>
extern fn void TextBuffer.set_enable_undo(&self, bool enable_undo) @extern("gtk_text_buffer_set_enable_undo");

<* Maps to set_max_undo_levels *>
extern fn void TextBuffer.set_max_undo_levels(&self, uint max_undo_levels) @extern("gtk_text_buffer_set_max_undo_levels");

<* Maps to set_modified *>
extern fn void TextBuffer.set_modified(&self, bool setting) @extern("gtk_text_buffer_set_modified");

<* Maps to set_text *>
extern fn void TextBuffer.set_text(&self, ZString text, int len) @extern("gtk_text_buffer_set_text");

<* Maps to undo *>
extern fn void TextBuffer.undo(&self) @extern("gtk_text_buffer_undo");


<* Maps to GtkTextChildAnchor *>
distinct TextChildAnchor = void*;

fn gobject::Object* TextChildAnchor.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_deleted *>
extern fn bool TextChildAnchor.get_deleted(&self) @extern("gtk_text_child_anchor_get_deleted");

<* Maps to get_widgets *>
extern fn Widget* TextChildAnchor.get_widgets(&self, uint* out_len) @extern("gtk_text_child_anchor_get_widgets");


<* Maps to GtkTextMark *>
distinct TextMark = void*;

fn gobject::Object* TextMark.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_buffer *>
extern fn TextBuffer* TextMark.get_buffer(&self) @extern("gtk_text_mark_get_buffer");

<* Maps to get_deleted *>
extern fn bool TextMark.get_deleted(&self) @extern("gtk_text_mark_get_deleted");

<* Maps to get_left_gravity *>
extern fn bool TextMark.get_left_gravity(&self) @extern("gtk_text_mark_get_left_gravity");

<* Maps to get_name *>
extern fn ZString TextMark.get_name(&self) @extern("gtk_text_mark_get_name");

<* Maps to get_visible *>
extern fn bool TextMark.get_visible(&self) @extern("gtk_text_mark_get_visible");

<* Maps to set_visible *>
extern fn void TextMark.set_visible(&self, bool setting) @extern("gtk_text_mark_set_visible");


<* Maps to GtkTextTag *>
distinct TextTag = void*;

fn gobject::Object* TextTag.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to changed *>
extern fn void TextTag.changed(&self, bool size_changed) @extern("gtk_text_tag_changed");

<* Maps to get_priority *>
extern fn int TextTag.get_priority(&self) @extern("gtk_text_tag_get_priority");

<* Maps to set_priority *>
extern fn void TextTag.set_priority(&self, int priority) @extern("gtk_text_tag_set_priority");


<* Maps to GtkTextTagTable *>
distinct TextTagTable = void*;

fn gobject::Object* TextTagTable.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to add *>
extern fn bool TextTagTable.add(&self, TextTag* tag) @extern("gtk_text_tag_table_add");

<* Maps to for_each *>
extern fn void TextTagTable.for_each(&self, TextTagTableForeach func, void* data) @extern("gtk_text_tag_table_foreach");

<* Maps to get_size *>
extern fn int TextTagTable.get_size(&self) @extern("gtk_text_tag_table_get_size");

<* Maps to lookup *>
extern fn TextTag* TextTagTable.lookup(&self, ZString name) @extern("gtk_text_tag_table_lookup");

<* Maps to remove *>
extern fn void TextTagTable.remove(&self, TextTag* tag) @extern("gtk_text_tag_table_remove");


<* Maps to GtkTextView *>
distinct TextView = void*;

fn Widget* TextView.as_Widget(&self) => (Widget*)(self);


<* Maps to add_child_at_anchor *>
extern fn void TextView.add_child_at_anchor(&self, Widget* child, TextChildAnchor* anchor) @extern("gtk_text_view_add_child_at_anchor");

<* Maps to add_overlay *>
extern fn void TextView.add_overlay(&self, Widget* child, int xpos, int ypos) @extern("gtk_text_view_add_overlay");

<* Maps to backward_display_line *>
extern fn bool TextView.backward_display_line(&self, TextIter* iter) @extern("gtk_text_view_backward_display_line");

<* Maps to backward_display_line_start *>
extern fn bool TextView.backward_display_line_start(&self, TextIter* iter) @extern("gtk_text_view_backward_display_line_start");

<* Maps to buffer_to_window_coords *>
extern fn void TextView.buffer_to_window_coords(&self, TextWindowType win, int buffer_x, int buffer_y, int* window_x, int* window_y) @extern("gtk_text_view_buffer_to_window_coords");

<* Maps to forward_display_line *>
extern fn bool TextView.forward_display_line(&self, TextIter* iter) @extern("gtk_text_view_forward_display_line");

<* Maps to forward_display_line_end *>
extern fn bool TextView.forward_display_line_end(&self, TextIter* iter) @extern("gtk_text_view_forward_display_line_end");

<* Maps to get_accepts_tab *>
extern fn bool TextView.get_accepts_tab(&self) @extern("gtk_text_view_get_accepts_tab");

<* Maps to get_bottom_margin *>
extern fn int TextView.get_bottom_margin(&self) @extern("gtk_text_view_get_bottom_margin");

<* Maps to get_buffer *>
extern fn TextBuffer* TextView.get_buffer(&self) @extern("gtk_text_view_get_buffer");

<* Maps to get_cursor_locations *>
extern fn void TextView.get_cursor_locations(&self, TextIter* iter, gdk::Rectangle* strong, gdk::Rectangle* weak) @extern("gtk_text_view_get_cursor_locations");

<* Maps to get_cursor_visible *>
extern fn bool TextView.get_cursor_visible(&self) @extern("gtk_text_view_get_cursor_visible");

<* Maps to get_editable *>
extern fn bool TextView.get_editable(&self) @extern("gtk_text_view_get_editable");

<* Maps to get_extra_menu *>
extern fn gio::MenuModel* TextView.get_extra_menu(&self) @extern("gtk_text_view_get_extra_menu");

<* Maps to get_gutter *>
extern fn Widget* TextView.get_gutter(&self, TextWindowType win) @extern("gtk_text_view_get_gutter");

<* Maps to get_indent *>
extern fn int TextView.get_indent(&self) @extern("gtk_text_view_get_indent");

<* Maps to get_input_hints *>
extern fn InputHints TextView.get_input_hints(&self) @extern("gtk_text_view_get_input_hints");

<* Maps to get_input_purpose *>
extern fn InputPurpose TextView.get_input_purpose(&self) @extern("gtk_text_view_get_input_purpose");

<* Maps to get_iter_at_location *>
extern fn bool TextView.get_iter_at_location(&self, TextIter* iter, int x, int y) @extern("gtk_text_view_get_iter_at_location");

<* Maps to get_iter_at_position *>
extern fn bool TextView.get_iter_at_position(&self, TextIter* iter, int* trailing, int x, int y) @extern("gtk_text_view_get_iter_at_position");

<* Maps to get_iter_location *>
extern fn void TextView.get_iter_location(&self, TextIter* iter, gdk::Rectangle* location) @extern("gtk_text_view_get_iter_location");

<* Maps to get_justification *>
extern fn Justification TextView.get_justification(&self) @extern("gtk_text_view_get_justification");

<* Maps to get_left_margin *>
extern fn int TextView.get_left_margin(&self) @extern("gtk_text_view_get_left_margin");

<* Maps to get_line_at_y *>
extern fn void TextView.get_line_at_y(&self, TextIter* target_iter, int y, int* line_top) @extern("gtk_text_view_get_line_at_y");

<* Maps to get_line_yrange *>
extern fn void TextView.get_line_yrange(&self, TextIter* iter, int* y, int* height) @extern("gtk_text_view_get_line_yrange");

<* Maps to get_ltr_context *>
extern fn pango::Context* TextView.get_ltr_context(&self) @extern("gtk_text_view_get_ltr_context");

<* Maps to get_monospace *>
extern fn bool TextView.get_monospace(&self) @extern("gtk_text_view_get_monospace");

<* Maps to get_overwrite *>
extern fn bool TextView.get_overwrite(&self) @extern("gtk_text_view_get_overwrite");

<* Maps to get_pixels_above_lines *>
extern fn int TextView.get_pixels_above_lines(&self) @extern("gtk_text_view_get_pixels_above_lines");

<* Maps to get_pixels_below_lines *>
extern fn int TextView.get_pixels_below_lines(&self) @extern("gtk_text_view_get_pixels_below_lines");

<* Maps to get_pixels_inside_wrap *>
extern fn int TextView.get_pixels_inside_wrap(&self) @extern("gtk_text_view_get_pixels_inside_wrap");

<* Maps to get_right_margin *>
extern fn int TextView.get_right_margin(&self) @extern("gtk_text_view_get_right_margin");

<* Maps to get_rtl_context *>
extern fn pango::Context* TextView.get_rtl_context(&self) @extern("gtk_text_view_get_rtl_context");

<* Maps to get_tabs *>
extern fn pango::TabArray* TextView.get_tabs(&self) @extern("gtk_text_view_get_tabs");

<* Maps to get_top_margin *>
extern fn int TextView.get_top_margin(&self) @extern("gtk_text_view_get_top_margin");

<* Maps to get_visible_rect *>
extern fn void TextView.get_visible_rect(&self, gdk::Rectangle* visible_rect) @extern("gtk_text_view_get_visible_rect");

<* Maps to get_wrap_mode *>
extern fn WrapMode TextView.get_wrap_mode(&self) @extern("gtk_text_view_get_wrap_mode");

<* Maps to im_context_filter_keypress *>
extern fn bool TextView.im_context_filter_keypress(&self, gdk::Event* event) @extern("gtk_text_view_im_context_filter_keypress");

<* Maps to move_mark_onscreen *>
extern fn bool TextView.move_mark_onscreen(&self, TextMark* mark) @extern("gtk_text_view_move_mark_onscreen");

<* Maps to move_overlay *>
extern fn void TextView.move_overlay(&self, Widget* child, int xpos, int ypos) @extern("gtk_text_view_move_overlay");

<* Maps to move_visually *>
extern fn bool TextView.move_visually(&self, TextIter* iter, int count) @extern("gtk_text_view_move_visually");

<* Maps to place_cursor_onscreen *>
extern fn bool TextView.place_cursor_onscreen(&self) @extern("gtk_text_view_place_cursor_onscreen");

<* Maps to remove *>
extern fn void TextView.remove(&self, Widget* child) @extern("gtk_text_view_remove");

<* Maps to reset_cursor_blink *>
extern fn void TextView.reset_cursor_blink(&self) @extern("gtk_text_view_reset_cursor_blink");

<* Maps to reset_im_context *>
extern fn void TextView.reset_im_context(&self) @extern("gtk_text_view_reset_im_context");

<* Maps to scroll_mark_onscreen *>
extern fn void TextView.scroll_mark_onscreen(&self, TextMark* mark) @extern("gtk_text_view_scroll_mark_onscreen");

<* Maps to scroll_to_iter *>
extern fn bool TextView.scroll_to_iter(&self, TextIter* iter, double within_margin, bool use_align, double xalign, double yalign) @extern("gtk_text_view_scroll_to_iter");

<* Maps to scroll_to_mark *>
extern fn void TextView.scroll_to_mark(&self, TextMark* mark, double within_margin, bool use_align, double xalign, double yalign) @extern("gtk_text_view_scroll_to_mark");

<* Maps to set_accepts_tab *>
extern fn void TextView.set_accepts_tab(&self, bool accepts_tab) @extern("gtk_text_view_set_accepts_tab");

<* Maps to set_bottom_margin *>
extern fn void TextView.set_bottom_margin(&self, int bottom_margin) @extern("gtk_text_view_set_bottom_margin");

<* Maps to set_buffer *>
extern fn void TextView.set_buffer(&self, TextBuffer* buffer) @extern("gtk_text_view_set_buffer");

<* Maps to set_cursor_visible *>
extern fn void TextView.set_cursor_visible(&self, bool setting) @extern("gtk_text_view_set_cursor_visible");

<* Maps to set_editable *>
extern fn void TextView.set_editable(&self, bool setting) @extern("gtk_text_view_set_editable");

<* Maps to set_extra_menu *>
extern fn void TextView.set_extra_menu(&self, gio::MenuModel* model) @extern("gtk_text_view_set_extra_menu");

<* Maps to set_gutter *>
extern fn void TextView.set_gutter(&self, TextWindowType win, Widget* widget) @extern("gtk_text_view_set_gutter");

<* Maps to set_indent *>
extern fn void TextView.set_indent(&self, int indent) @extern("gtk_text_view_set_indent");

<* Maps to set_input_hints *>
extern fn void TextView.set_input_hints(&self, InputHints hints) @extern("gtk_text_view_set_input_hints");

<* Maps to set_input_purpose *>
extern fn void TextView.set_input_purpose(&self, InputPurpose purpose) @extern("gtk_text_view_set_input_purpose");

<* Maps to set_justification *>
extern fn void TextView.set_justification(&self, Justification justification) @extern("gtk_text_view_set_justification");

<* Maps to set_left_margin *>
extern fn void TextView.set_left_margin(&self, int left_margin) @extern("gtk_text_view_set_left_margin");

<* Maps to set_monospace *>
extern fn void TextView.set_monospace(&self, bool monospace) @extern("gtk_text_view_set_monospace");

<* Maps to set_overwrite *>
extern fn void TextView.set_overwrite(&self, bool overwrite) @extern("gtk_text_view_set_overwrite");

<* Maps to set_pixels_above_lines *>
extern fn void TextView.set_pixels_above_lines(&self, int pixels_above_lines) @extern("gtk_text_view_set_pixels_above_lines");

<* Maps to set_pixels_below_lines *>
extern fn void TextView.set_pixels_below_lines(&self, int pixels_below_lines) @extern("gtk_text_view_set_pixels_below_lines");

<* Maps to set_pixels_inside_wrap *>
extern fn void TextView.set_pixels_inside_wrap(&self, int pixels_inside_wrap) @extern("gtk_text_view_set_pixels_inside_wrap");

<* Maps to set_right_margin *>
extern fn void TextView.set_right_margin(&self, int right_margin) @extern("gtk_text_view_set_right_margin");

<* Maps to set_tabs *>
extern fn void TextView.set_tabs(&self, pango::TabArray* tabs) @extern("gtk_text_view_set_tabs");

<* Maps to set_top_margin *>
extern fn void TextView.set_top_margin(&self, int top_margin) @extern("gtk_text_view_set_top_margin");

<* Maps to set_wrap_mode *>
extern fn void TextView.set_wrap_mode(&self, WrapMode wrap_mode) @extern("gtk_text_view_set_wrap_mode");

<* Maps to starts_display_line *>
extern fn bool TextView.starts_display_line(&self, TextIter* iter) @extern("gtk_text_view_starts_display_line");

<* Maps to window_to_buffer_coords *>
extern fn void TextView.window_to_buffer_coords(&self, TextWindowType win, int window_x, int window_y, int* buffer_x, int* buffer_y) @extern("gtk_text_view_window_to_buffer_coords");


<* Maps to GtkToggleButton *>
distinct ToggleButton = void*;

fn Button* ToggleButton.as_Button(&self) => (Button*)(self);


<* Maps to get_active *>
extern fn bool ToggleButton.get_active(&self) @extern("gtk_toggle_button_get_active");

<* Maps to set_active *>
extern fn void ToggleButton.set_active(&self, bool is_active) @extern("gtk_toggle_button_set_active");

<* Maps to set_group *>
extern fn void ToggleButton.set_group(&self, ToggleButton* group) @extern("gtk_toggle_button_set_group");

<* Maps to toggled *>
extern fn void ToggleButton.toggled(&self) @extern("gtk_toggle_button_toggled");


<* Maps to GtkTooltip *>
distinct Tooltip = void*;

fn gobject::Object* Tooltip.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to set_custom *>
extern fn void Tooltip.set_custom(&self, Widget* custom_widget) @extern("gtk_tooltip_set_custom");

<* Maps to set_icon *>
extern fn void Tooltip.set_icon(&self, gdk::Paintable* paintable) @extern("gtk_tooltip_set_icon");

<* Maps to set_icon_from_gicon *>
extern fn void Tooltip.set_icon_from_gicon(&self, gio::Icon* gicon) @extern("gtk_tooltip_set_icon_from_gicon");

<* Maps to set_icon_from_icon_name *>
extern fn void Tooltip.set_icon_from_icon_name(&self, ZString icon_name) @extern("gtk_tooltip_set_icon_from_icon_name");

<* Maps to set_markup *>
extern fn void Tooltip.set_markup(&self, ZString markup) @extern("gtk_tooltip_set_markup");

<* Maps to set_text *>
extern fn void Tooltip.set_text(&self, ZString text) @extern("gtk_tooltip_set_text");

<* Maps to set_tip_area *>
extern fn void Tooltip.set_tip_area(&self, gdk::Rectangle* rect) @extern("gtk_tooltip_set_tip_area");


<* Maps to GtkTreeExpander *>
distinct TreeExpander = void*;

fn Widget* TreeExpander.as_Widget(&self) => (Widget*)(self);


<* Maps to get_child *>
extern fn Widget* TreeExpander.get_child(&self) @extern("gtk_tree_expander_get_child");

<* Maps to get_hide_expander *>
extern fn bool TreeExpander.get_hide_expander(&self) @extern("gtk_tree_expander_get_hide_expander");

<* Maps to get_indent_for_depth *>
extern fn bool TreeExpander.get_indent_for_depth(&self) @extern("gtk_tree_expander_get_indent_for_depth");

<* Maps to get_indent_for_icon *>
extern fn bool TreeExpander.get_indent_for_icon(&self) @extern("gtk_tree_expander_get_indent_for_icon");

<* Maps to get_item *>
extern fn gobject::Object* TreeExpander.get_item(&self) @extern("gtk_tree_expander_get_item");

<* Maps to get_list_row *>
extern fn TreeListRow* TreeExpander.get_list_row(&self) @extern("gtk_tree_expander_get_list_row");

<* Maps to set_child *>
extern fn void TreeExpander.set_child(&self, Widget* child) @extern("gtk_tree_expander_set_child");

<* Maps to set_hide_expander *>
extern fn void TreeExpander.set_hide_expander(&self, bool hide_expander) @extern("gtk_tree_expander_set_hide_expander");

<* Maps to set_indent_for_depth *>
extern fn void TreeExpander.set_indent_for_depth(&self, bool indent_for_depth) @extern("gtk_tree_expander_set_indent_for_depth");

<* Maps to set_indent_for_icon *>
extern fn void TreeExpander.set_indent_for_icon(&self, bool indent_for_icon) @extern("gtk_tree_expander_set_indent_for_icon");

<* Maps to set_list_row *>
extern fn void TreeExpander.set_list_row(&self, TreeListRow* list_row) @extern("gtk_tree_expander_set_list_row");


<* Maps to GtkTreeListModel *>
distinct TreeListModel = void*;

fn gobject::Object* TreeListModel.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_autoexpand *>
extern fn bool TreeListModel.get_autoexpand(&self) @extern("gtk_tree_list_model_get_autoexpand");

<* Maps to get_child_row *>
extern fn TreeListRow* TreeListModel.get_child_row(&self, uint position) @extern("gtk_tree_list_model_get_child_row");

<* Maps to get_model *>
extern fn gio::ListModel* TreeListModel.get_model(&self) @extern("gtk_tree_list_model_get_model");

<* Maps to get_passthrough *>
extern fn bool TreeListModel.get_passthrough(&self) @extern("gtk_tree_list_model_get_passthrough");

<* Maps to get_row *>
extern fn TreeListRow* TreeListModel.get_row(&self, uint position) @extern("gtk_tree_list_model_get_row");

<* Maps to set_autoexpand *>
extern fn void TreeListModel.set_autoexpand(&self, bool autoexpand) @extern("gtk_tree_list_model_set_autoexpand");


<* Maps to GtkTreeListRow *>
distinct TreeListRow = void*;

fn gobject::Object* TreeListRow.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_child_row *>
extern fn TreeListRow* TreeListRow.get_child_row(&self, uint position) @extern("gtk_tree_list_row_get_child_row");

<* Maps to get_children *>
extern fn gio::ListModel* TreeListRow.get_children(&self) @extern("gtk_tree_list_row_get_children");

<* Maps to get_depth *>
extern fn uint TreeListRow.get_depth(&self) @extern("gtk_tree_list_row_get_depth");

<* Maps to get_expanded *>
extern fn bool TreeListRow.get_expanded(&self) @extern("gtk_tree_list_row_get_expanded");

<* Maps to get_item *>
extern fn gobject::Object* TreeListRow.get_item(&self) @extern("gtk_tree_list_row_get_item");

<* Maps to get_parent *>
extern fn TreeListRow* TreeListRow.get_parent(&self) @extern("gtk_tree_list_row_get_parent");

<* Maps to get_position *>
extern fn uint TreeListRow.get_position(&self) @extern("gtk_tree_list_row_get_position");

<* Maps to is_expandable *>
extern fn bool TreeListRow.is_expandable(&self) @extern("gtk_tree_list_row_is_expandable");

<* Maps to set_expanded *>
extern fn void TreeListRow.set_expanded(&self, bool expanded) @extern("gtk_tree_list_row_set_expanded");


<* Maps to GtkTreeListRowSorter *>
distinct TreeListRowSorter = void*;

fn Sorter* TreeListRowSorter.as_Sorter(&self) => (Sorter*)(self);


<* Maps to get_sorter *>
extern fn Sorter* TreeListRowSorter.get_sorter(&self) @extern("gtk_tree_list_row_sorter_get_sorter");

<* Maps to set_sorter *>
extern fn void TreeListRowSorter.set_sorter(&self, Sorter* sorter) @extern("gtk_tree_list_row_sorter_set_sorter");


<* Maps to GtkTreeModelFilter *>
distinct TreeModelFilter = void*;

fn gobject::Object* TreeModelFilter.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to clear_cache *>
extern fn void TreeModelFilter.clear_cache(&self) @extern("gtk_tree_model_filter_clear_cache");

<* Maps to convert_child_iter_to_iter *>
extern fn bool TreeModelFilter.convert_child_iter_to_iter(&self, TreeIter* filter_iter, TreeIter* child_iter) @extern("gtk_tree_model_filter_convert_child_iter_to_iter");

<* Maps to convert_child_path_to_path *>
extern fn TreePath* TreeModelFilter.convert_child_path_to_path(&self, TreePath* child_path) @extern("gtk_tree_model_filter_convert_child_path_to_path");

<* Maps to convert_iter_to_child_iter *>
extern fn void TreeModelFilter.convert_iter_to_child_iter(&self, TreeIter* child_iter, TreeIter* filter_iter) @extern("gtk_tree_model_filter_convert_iter_to_child_iter");

<* Maps to convert_path_to_child_path *>
extern fn TreePath* TreeModelFilter.convert_path_to_child_path(&self, TreePath* filter_path) @extern("gtk_tree_model_filter_convert_path_to_child_path");

<* Maps to get_model *>
extern fn TreeModel* TreeModelFilter.get_model(&self) @extern("gtk_tree_model_filter_get_model");

<* Maps to refilter *>
extern fn void TreeModelFilter.refilter(&self) @extern("gtk_tree_model_filter_refilter");

<* Maps to set_modify_func *>
extern fn void TreeModelFilter.set_modify_func(&self, int n_columns, usz types, TreeModelFilterModifyFunc func, void* data, glib::DestroyNotify destroy) @extern("gtk_tree_model_filter_set_modify_func");

<* Maps to set_visible_column *>
extern fn void TreeModelFilter.set_visible_column(&self, int column) @extern("gtk_tree_model_filter_set_visible_column");

<* Maps to set_visible_func *>
extern fn void TreeModelFilter.set_visible_func(&self, TreeModelFilterVisibleFunc func, void* data, glib::DestroyNotify destroy) @extern("gtk_tree_model_filter_set_visible_func");


<* Maps to GtkTreeModelSort *>
distinct TreeModelSort = void*;

fn gobject::Object* TreeModelSort.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to clear_cache *>
extern fn void TreeModelSort.clear_cache(&self) @extern("gtk_tree_model_sort_clear_cache");

<* Maps to convert_child_iter_to_iter *>
extern fn bool TreeModelSort.convert_child_iter_to_iter(&self, TreeIter* sort_iter, TreeIter* child_iter) @extern("gtk_tree_model_sort_convert_child_iter_to_iter");

<* Maps to convert_child_path_to_path *>
extern fn TreePath* TreeModelSort.convert_child_path_to_path(&self, TreePath* child_path) @extern("gtk_tree_model_sort_convert_child_path_to_path");

<* Maps to convert_iter_to_child_iter *>
extern fn void TreeModelSort.convert_iter_to_child_iter(&self, TreeIter* child_iter, TreeIter* sorted_iter) @extern("gtk_tree_model_sort_convert_iter_to_child_iter");

<* Maps to convert_path_to_child_path *>
extern fn TreePath* TreeModelSort.convert_path_to_child_path(&self, TreePath* sorted_path) @extern("gtk_tree_model_sort_convert_path_to_child_path");

<* Maps to get_model *>
extern fn TreeModel* TreeModelSort.get_model(&self) @extern("gtk_tree_model_sort_get_model");

<* Maps to iter_is_valid *>
extern fn bool TreeModelSort.iter_is_valid(&self, TreeIter* iter) @extern("gtk_tree_model_sort_iter_is_valid");

<* Maps to reset_default_sort_func *>
extern fn void TreeModelSort.reset_default_sort_func(&self) @extern("gtk_tree_model_sort_reset_default_sort_func");


<* Maps to GtkTreeSelection *>
distinct TreeSelection = void*;

fn gobject::Object* TreeSelection.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to count_selected_rows *>
extern fn int TreeSelection.count_selected_rows(&self) @extern("gtk_tree_selection_count_selected_rows");

<* Maps to get_mode *>
extern fn SelectionMode TreeSelection.get_mode(&self) @extern("gtk_tree_selection_get_mode");

<* Maps to get_select_function *>
extern fn TreeSelectionFunc TreeSelection.get_select_function(&self) @extern("gtk_tree_selection_get_select_function");

<* Maps to get_selected *>
extern fn bool TreeSelection.get_selected(&self, TreeModel* model, TreeIter* iter) @extern("gtk_tree_selection_get_selected");

<* Maps to get_selected_rows *>
extern fn glib::List* TreeSelection.get_selected_rows(&self, TreeModel* model) @extern("gtk_tree_selection_get_selected_rows");

<* Maps to get_tree_view *>
extern fn TreeView* TreeSelection.get_tree_view(&self) @extern("gtk_tree_selection_get_tree_view");

<* Maps to get_user_data *>
extern fn void* TreeSelection.get_user_data(&self) @extern("gtk_tree_selection_get_user_data");

<* Maps to iter_is_selected *>
extern fn bool TreeSelection.iter_is_selected(&self, TreeIter* iter) @extern("gtk_tree_selection_iter_is_selected");

<* Maps to path_is_selected *>
extern fn bool TreeSelection.path_is_selected(&self, TreePath* path) @extern("gtk_tree_selection_path_is_selected");

<* Maps to select_all *>
extern fn void TreeSelection.select_all(&self) @extern("gtk_tree_selection_select_all");

<* Maps to select_iter *>
extern fn void TreeSelection.select_iter(&self, TreeIter* iter) @extern("gtk_tree_selection_select_iter");

<* Maps to select_path *>
extern fn void TreeSelection.select_path(&self, TreePath* path) @extern("gtk_tree_selection_select_path");

<* Maps to select_range *>
extern fn void TreeSelection.select_range(&self, TreePath* start_path, TreePath* end_path) @extern("gtk_tree_selection_select_range");

<* Maps to selected_foreach *>
extern fn void TreeSelection.selected_foreach(&self, TreeSelectionForeachFunc func, void* data) @extern("gtk_tree_selection_selected_foreach");

<* Maps to set_mode *>
extern fn void TreeSelection.set_mode(&self, SelectionMode type) @extern("gtk_tree_selection_set_mode");

<* Maps to set_select_function *>
extern fn void TreeSelection.set_select_function(&self, TreeSelectionFunc func, void* data, glib::DestroyNotify destroy) @extern("gtk_tree_selection_set_select_function");

<* Maps to unselect_all *>
extern fn void TreeSelection.unselect_all(&self) @extern("gtk_tree_selection_unselect_all");

<* Maps to unselect_iter *>
extern fn void TreeSelection.unselect_iter(&self, TreeIter* iter) @extern("gtk_tree_selection_unselect_iter");

<* Maps to unselect_path *>
extern fn void TreeSelection.unselect_path(&self, TreePath* path) @extern("gtk_tree_selection_unselect_path");

<* Maps to unselect_range *>
extern fn void TreeSelection.unselect_range(&self, TreePath* start_path, TreePath* end_path) @extern("gtk_tree_selection_unselect_range");


<* Maps to GtkTreeStore *>
distinct TreeStore = void*;

fn gobject::Object* TreeStore.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to append *>
extern fn void TreeStore.append(&self, TreeIter* iter, TreeIter* parent) @extern("gtk_tree_store_append");

<* Maps to clear *>
extern fn void TreeStore.clear(&self) @extern("gtk_tree_store_clear");

<* Maps to insert *>
extern fn void TreeStore.insert(&self, TreeIter* iter, TreeIter* parent, int position) @extern("gtk_tree_store_insert");

<* Maps to insert_after *>
extern fn void TreeStore.insert_after(&self, TreeIter* iter, TreeIter* parent, TreeIter* sibling) @extern("gtk_tree_store_insert_after");

<* Maps to insert_before *>
extern fn void TreeStore.insert_before(&self, TreeIter* iter, TreeIter* parent, TreeIter* sibling) @extern("gtk_tree_store_insert_before");

<* Maps to insert_with_values *>
extern fn void TreeStore.insert_with_values(&self, TreeIter* iter, TreeIter* parent, int position, any rest) @extern("gtk_tree_store_insert_with_values");

<* Maps to insert_with_valuesv *>
extern fn void TreeStore.insert_with_valuesv(&self, TreeIter* iter, TreeIter* parent, int position, int columns, gobject::Value values, int n_values) @extern("gtk_tree_store_insert_with_valuesv");

<* Maps to is_ancestor *>
extern fn bool TreeStore.is_ancestor(&self, TreeIter* iter, TreeIter* descendant) @extern("gtk_tree_store_is_ancestor");

<* Maps to iter_depth *>
extern fn int TreeStore.iter_depth(&self, TreeIter* iter) @extern("gtk_tree_store_iter_depth");

<* Maps to iter_is_valid *>
extern fn bool TreeStore.iter_is_valid(&self, TreeIter* iter) @extern("gtk_tree_store_iter_is_valid");

<* Maps to move_after *>
extern fn void TreeStore.move_after(&self, TreeIter* iter, TreeIter* position) @extern("gtk_tree_store_move_after");

<* Maps to move_before *>
extern fn void TreeStore.move_before(&self, TreeIter* iter, TreeIter* position) @extern("gtk_tree_store_move_before");

<* Maps to prepend *>
extern fn void TreeStore.prepend(&self, TreeIter* iter, TreeIter* parent) @extern("gtk_tree_store_prepend");

<* Maps to remove *>
extern fn bool TreeStore.remove(&self, TreeIter* iter) @extern("gtk_tree_store_remove");

<* Maps to reorder *>
extern fn void TreeStore.reorder(&self, TreeIter* parent, int new_order) @extern("gtk_tree_store_reorder");

<* Maps to set *>
extern fn void TreeStore.set(&self, TreeIter* iter, any rest) @extern("gtk_tree_store_set");

<* Maps to set_column_types *>
extern fn void TreeStore.set_column_types(&self, int n_columns, usz types) @extern("gtk_tree_store_set_column_types");

<* Maps to set_value *>
extern fn void TreeStore.set_value(&self, TreeIter* iter, int column, gobject::Value* value) @extern("gtk_tree_store_set_value");

<* Maps to set_valuesv *>
extern fn void TreeStore.set_valuesv(&self, TreeIter* iter, int columns, gobject::Value values, int n_values) @extern("gtk_tree_store_set_valuesv");

<* Maps to swap *>
extern fn void TreeStore.swap(&self, TreeIter* a, TreeIter* b) @extern("gtk_tree_store_swap");


<* Maps to GtkTreeView *>
distinct TreeView = void*;

fn Widget* TreeView.as_Widget(&self) => (Widget*)(self);


<* Maps to append_column *>
extern fn int TreeView.append_column(&self, TreeViewColumn* column) @extern("gtk_tree_view_append_column");

<* Maps to collapse_all *>
extern fn void TreeView.collapse_all(&self) @extern("gtk_tree_view_collapse_all");

<* Maps to collapse_row *>
extern fn bool TreeView.collapse_row(&self, TreePath* path) @extern("gtk_tree_view_collapse_row");

<* Maps to columns_autosize *>
extern fn void TreeView.columns_autosize(&self) @extern("gtk_tree_view_columns_autosize");

<* Maps to convert_bin_window_to_tree_coords *>
extern fn void TreeView.convert_bin_window_to_tree_coords(&self, int bx, int by, int* tx, int* ty) @extern("gtk_tree_view_convert_bin_window_to_tree_coords");

<* Maps to convert_bin_window_to_widget_coords *>
extern fn void TreeView.convert_bin_window_to_widget_coords(&self, int bx, int by, int* wx, int* wy) @extern("gtk_tree_view_convert_bin_window_to_widget_coords");

<* Maps to convert_tree_to_bin_window_coords *>
extern fn void TreeView.convert_tree_to_bin_window_coords(&self, int tx, int ty, int* bx, int* by) @extern("gtk_tree_view_convert_tree_to_bin_window_coords");

<* Maps to convert_tree_to_widget_coords *>
extern fn void TreeView.convert_tree_to_widget_coords(&self, int tx, int ty, int* wx, int* wy) @extern("gtk_tree_view_convert_tree_to_widget_coords");

<* Maps to convert_widget_to_bin_window_coords *>
extern fn void TreeView.convert_widget_to_bin_window_coords(&self, int wx, int wy, int* bx, int* by) @extern("gtk_tree_view_convert_widget_to_bin_window_coords");

<* Maps to convert_widget_to_tree_coords *>
extern fn void TreeView.convert_widget_to_tree_coords(&self, int wx, int wy, int* tx, int* ty) @extern("gtk_tree_view_convert_widget_to_tree_coords");

<* Maps to create_row_drag_icon *>
extern fn gdk::Paintable* TreeView.create_row_drag_icon(&self, TreePath* path) @extern("gtk_tree_view_create_row_drag_icon");

<* Maps to enable_model_drag_dest *>
extern fn void TreeView.enable_model_drag_dest(&self, gdk::ContentFormats* formats, gdk::DragAction actions) @extern("gtk_tree_view_enable_model_drag_dest");

<* Maps to enable_model_drag_source *>
extern fn void TreeView.enable_model_drag_source(&self, gdk::ModifierType start_button_mask, gdk::ContentFormats* formats, gdk::DragAction actions) @extern("gtk_tree_view_enable_model_drag_source");

<* Maps to expand_all *>
extern fn void TreeView.expand_all(&self) @extern("gtk_tree_view_expand_all");

<* Maps to expand_row *>
extern fn bool TreeView.expand_row(&self, TreePath* path, bool open_all) @extern("gtk_tree_view_expand_row");

<* Maps to expand_to_path *>
extern fn void TreeView.expand_to_path(&self, TreePath* path) @extern("gtk_tree_view_expand_to_path");

<* Maps to get_activate_on_single_click *>
extern fn bool TreeView.get_activate_on_single_click(&self) @extern("gtk_tree_view_get_activate_on_single_click");

<* Maps to get_background_area *>
extern fn void TreeView.get_background_area(&self, TreePath* path, TreeViewColumn* column, gdk::Rectangle* rect) @extern("gtk_tree_view_get_background_area");

<* Maps to get_cell_area *>
extern fn void TreeView.get_cell_area(&self, TreePath* path, TreeViewColumn* column, gdk::Rectangle* rect) @extern("gtk_tree_view_get_cell_area");

<* Maps to get_column *>
extern fn TreeViewColumn* TreeView.get_column(&self, int n) @extern("gtk_tree_view_get_column");

<* Maps to get_columns *>
extern fn glib::List* TreeView.get_columns(&self) @extern("gtk_tree_view_get_columns");

<* Maps to get_cursor *>
extern fn void TreeView.get_cursor(&self, TreePath* path, TreeViewColumn* focus_column) @extern("gtk_tree_view_get_cursor");

<* Maps to get_dest_row_at_pos *>
extern fn bool TreeView.get_dest_row_at_pos(&self, int drag_x, int drag_y, TreePath* path, TreeViewDropPosition* pos) @extern("gtk_tree_view_get_dest_row_at_pos");

<* Maps to get_drag_dest_row *>
extern fn void TreeView.get_drag_dest_row(&self, TreePath* path, TreeViewDropPosition* pos) @extern("gtk_tree_view_get_drag_dest_row");

<* Maps to get_enable_search *>
extern fn bool TreeView.get_enable_search(&self) @extern("gtk_tree_view_get_enable_search");

<* Maps to get_enable_tree_lines *>
extern fn bool TreeView.get_enable_tree_lines(&self) @extern("gtk_tree_view_get_enable_tree_lines");

<* Maps to get_expander_column *>
extern fn TreeViewColumn* TreeView.get_expander_column(&self) @extern("gtk_tree_view_get_expander_column");

<* Maps to get_fixed_height_mode *>
extern fn bool TreeView.get_fixed_height_mode(&self) @extern("gtk_tree_view_get_fixed_height_mode");

<* Maps to get_grid_lines *>
extern fn TreeViewGridLines TreeView.get_grid_lines(&self) @extern("gtk_tree_view_get_grid_lines");

<* Maps to get_headers_clickable *>
extern fn bool TreeView.get_headers_clickable(&self) @extern("gtk_tree_view_get_headers_clickable");

<* Maps to get_headers_visible *>
extern fn bool TreeView.get_headers_visible(&self) @extern("gtk_tree_view_get_headers_visible");

<* Maps to get_hover_expand *>
extern fn bool TreeView.get_hover_expand(&self) @extern("gtk_tree_view_get_hover_expand");

<* Maps to get_hover_selection *>
extern fn bool TreeView.get_hover_selection(&self) @extern("gtk_tree_view_get_hover_selection");

<* Maps to get_level_indentation *>
extern fn int TreeView.get_level_indentation(&self) @extern("gtk_tree_view_get_level_indentation");

<* Maps to get_model *>
extern fn TreeModel* TreeView.get_model(&self) @extern("gtk_tree_view_get_model");

<* Maps to get_n_columns *>
extern fn uint TreeView.get_n_columns(&self) @extern("gtk_tree_view_get_n_columns");

<* Maps to get_path_at_pos *>
extern fn bool TreeView.get_path_at_pos(&self, int x, int y, TreePath* path, TreeViewColumn* column, int* cell_x, int* cell_y) @extern("gtk_tree_view_get_path_at_pos");

<* Maps to get_reorderable *>
extern fn bool TreeView.get_reorderable(&self) @extern("gtk_tree_view_get_reorderable");

<* Maps to get_row_separator_func *>
extern fn TreeViewRowSeparatorFunc TreeView.get_row_separator_func(&self) @extern("gtk_tree_view_get_row_separator_func");

<* Maps to get_rubber_banding *>
extern fn bool TreeView.get_rubber_banding(&self) @extern("gtk_tree_view_get_rubber_banding");

<* Maps to get_search_column *>
extern fn int TreeView.get_search_column(&self) @extern("gtk_tree_view_get_search_column");

<* Maps to get_search_entry *>
extern fn Editable* TreeView.get_search_entry(&self) @extern("gtk_tree_view_get_search_entry");

<* Maps to get_search_equal_func *>
extern fn TreeViewSearchEqualFunc TreeView.get_search_equal_func(&self) @extern("gtk_tree_view_get_search_equal_func");

<* Maps to get_selection *>
extern fn TreeSelection* TreeView.get_selection(&self) @extern("gtk_tree_view_get_selection");

<* Maps to get_show_expanders *>
extern fn bool TreeView.get_show_expanders(&self) @extern("gtk_tree_view_get_show_expanders");

<* Maps to get_tooltip_column *>
extern fn int TreeView.get_tooltip_column(&self) @extern("gtk_tree_view_get_tooltip_column");

<* Maps to get_tooltip_context *>
extern fn bool TreeView.get_tooltip_context(&self, int x, int y, bool keyboard_tip, TreeModel* model, TreePath* path, TreeIter* iter) @extern("gtk_tree_view_get_tooltip_context");

<* Maps to get_visible_range *>
extern fn bool TreeView.get_visible_range(&self, TreePath* start_path, TreePath* end_path) @extern("gtk_tree_view_get_visible_range");

<* Maps to get_visible_rect *>
extern fn void TreeView.get_visible_rect(&self, gdk::Rectangle* visible_rect) @extern("gtk_tree_view_get_visible_rect");

<* Maps to insert_column *>
extern fn int TreeView.insert_column(&self, TreeViewColumn* column, int position) @extern("gtk_tree_view_insert_column");

<* Maps to insert_column_with_attributes *>
extern fn int TreeView.insert_column_with_attributes(&self, int position, ZString title, CellRenderer* cell, any rest) @extern("gtk_tree_view_insert_column_with_attributes");

<* Maps to insert_column_with_data_func *>
extern fn int TreeView.insert_column_with_data_func(&self, int position, ZString title, CellRenderer* cell, TreeCellDataFunc func, void* data, glib::DestroyNotify dnotify) @extern("gtk_tree_view_insert_column_with_data_func");

<* Maps to is_blank_at_pos *>
extern fn bool TreeView.is_blank_at_pos(&self, int x, int y, TreePath* path, TreeViewColumn* column, int* cell_x, int* cell_y) @extern("gtk_tree_view_is_blank_at_pos");

<* Maps to is_rubber_banding_active *>
extern fn bool TreeView.is_rubber_banding_active(&self) @extern("gtk_tree_view_is_rubber_banding_active");

<* Maps to map_expanded_rows *>
extern fn void TreeView.map_expanded_rows(&self, TreeViewMappingFunc func, void* data) @extern("gtk_tree_view_map_expanded_rows");

<* Maps to move_column_after *>
extern fn void TreeView.move_column_after(&self, TreeViewColumn* column, TreeViewColumn* base_column) @extern("gtk_tree_view_move_column_after");

<* Maps to remove_column *>
extern fn int TreeView.remove_column(&self, TreeViewColumn* column) @extern("gtk_tree_view_remove_column");

<* Maps to row_activated *>
extern fn void TreeView.row_activated(&self, TreePath* path, TreeViewColumn* column) @extern("gtk_tree_view_row_activated");

<* Maps to row_expanded *>
extern fn bool TreeView.row_expanded(&self, TreePath* path) @extern("gtk_tree_view_row_expanded");

<* Maps to scroll_to_cell *>
extern fn void TreeView.scroll_to_cell(&self, TreePath* path, TreeViewColumn* column, bool use_align, float row_align, float col_align) @extern("gtk_tree_view_scroll_to_cell");

<* Maps to scroll_to_point *>
extern fn void TreeView.scroll_to_point(&self, int tree_x, int tree_y) @extern("gtk_tree_view_scroll_to_point");

<* Maps to set_activate_on_single_click *>
extern fn void TreeView.set_activate_on_single_click(&self, bool single) @extern("gtk_tree_view_set_activate_on_single_click");

<* Maps to set_column_drag_function *>
extern fn void TreeView.set_column_drag_function(&self, TreeViewColumnDropFunc func, void* user_data, glib::DestroyNotify destroy) @extern("gtk_tree_view_set_column_drag_function");

<* Maps to set_cursor *>
extern fn void TreeView.set_cursor(&self, TreePath* path, TreeViewColumn* focus_column, bool start_editing) @extern("gtk_tree_view_set_cursor");

<* Maps to set_cursor_on_cell *>
extern fn void TreeView.set_cursor_on_cell(&self, TreePath* path, TreeViewColumn* focus_column, CellRenderer* focus_cell, bool start_editing) @extern("gtk_tree_view_set_cursor_on_cell");

<* Maps to set_drag_dest_row *>
extern fn void TreeView.set_drag_dest_row(&self, TreePath* path, TreeViewDropPosition pos) @extern("gtk_tree_view_set_drag_dest_row");

<* Maps to set_enable_search *>
extern fn void TreeView.set_enable_search(&self, bool enable_search) @extern("gtk_tree_view_set_enable_search");

<* Maps to set_enable_tree_lines *>
extern fn void TreeView.set_enable_tree_lines(&self, bool enabled) @extern("gtk_tree_view_set_enable_tree_lines");

<* Maps to set_expander_column *>
extern fn void TreeView.set_expander_column(&self, TreeViewColumn* column) @extern("gtk_tree_view_set_expander_column");

<* Maps to set_fixed_height_mode *>
extern fn void TreeView.set_fixed_height_mode(&self, bool enable) @extern("gtk_tree_view_set_fixed_height_mode");

<* Maps to set_grid_lines *>
extern fn void TreeView.set_grid_lines(&self, TreeViewGridLines grid_lines) @extern("gtk_tree_view_set_grid_lines");

<* Maps to set_headers_clickable *>
extern fn void TreeView.set_headers_clickable(&self, bool setting) @extern("gtk_tree_view_set_headers_clickable");

<* Maps to set_headers_visible *>
extern fn void TreeView.set_headers_visible(&self, bool headers_visible) @extern("gtk_tree_view_set_headers_visible");

<* Maps to set_hover_expand *>
extern fn void TreeView.set_hover_expand(&self, bool expand) @extern("gtk_tree_view_set_hover_expand");

<* Maps to set_hover_selection *>
extern fn void TreeView.set_hover_selection(&self, bool hover) @extern("gtk_tree_view_set_hover_selection");

<* Maps to set_level_indentation *>
extern fn void TreeView.set_level_indentation(&self, int indentation) @extern("gtk_tree_view_set_level_indentation");

<* Maps to set_model *>
extern fn void TreeView.set_model(&self, TreeModel* model) @extern("gtk_tree_view_set_model");

<* Maps to set_reorderable *>
extern fn void TreeView.set_reorderable(&self, bool reorderable) @extern("gtk_tree_view_set_reorderable");

<* Maps to set_row_separator_func *>
extern fn void TreeView.set_row_separator_func(&self, TreeViewRowSeparatorFunc func, void* data, glib::DestroyNotify destroy) @extern("gtk_tree_view_set_row_separator_func");

<* Maps to set_rubber_banding *>
extern fn void TreeView.set_rubber_banding(&self, bool enable) @extern("gtk_tree_view_set_rubber_banding");

<* Maps to set_search_column *>
extern fn void TreeView.set_search_column(&self, int column) @extern("gtk_tree_view_set_search_column");

<* Maps to set_search_entry *>
extern fn void TreeView.set_search_entry(&self, Editable* entry) @extern("gtk_tree_view_set_search_entry");

<* Maps to set_search_equal_func *>
extern fn void TreeView.set_search_equal_func(&self, TreeViewSearchEqualFunc search_equal_func, void* search_user_data, glib::DestroyNotify search_destroy) @extern("gtk_tree_view_set_search_equal_func");

<* Maps to set_show_expanders *>
extern fn void TreeView.set_show_expanders(&self, bool enabled) @extern("gtk_tree_view_set_show_expanders");

<* Maps to set_tooltip_cell *>
extern fn void TreeView.set_tooltip_cell(&self, Tooltip* tooltip, TreePath* path, TreeViewColumn* column, CellRenderer* cell) @extern("gtk_tree_view_set_tooltip_cell");

<* Maps to set_tooltip_column *>
extern fn void TreeView.set_tooltip_column(&self, int column) @extern("gtk_tree_view_set_tooltip_column");

<* Maps to set_tooltip_row *>
extern fn void TreeView.set_tooltip_row(&self, Tooltip* tooltip, TreePath* path) @extern("gtk_tree_view_set_tooltip_row");

<* Maps to unset_rows_drag_dest *>
extern fn void TreeView.unset_rows_drag_dest(&self) @extern("gtk_tree_view_unset_rows_drag_dest");

<* Maps to unset_rows_drag_source *>
extern fn void TreeView.unset_rows_drag_source(&self) @extern("gtk_tree_view_unset_rows_drag_source");


<* Maps to GtkTreeViewColumn *>
distinct TreeViewColumn = void*;

fn gobject::InitiallyUnowned* TreeViewColumn.as_gobject_InitiallyUnowned(&self) => (gobject::InitiallyUnowned*)(self);


<* Maps to add_attribute *>
extern fn void TreeViewColumn.add_attribute(&self, CellRenderer* cell_renderer, ZString attribute, int column) @extern("gtk_tree_view_column_add_attribute");

<* Maps to cell_get_position *>
extern fn bool TreeViewColumn.cell_get_position(&self, CellRenderer* cell_renderer, int* x_offset, int* width) @extern("gtk_tree_view_column_cell_get_position");

<* Maps to cell_get_size *>
extern fn void TreeViewColumn.cell_get_size(&self, int* x_offset, int* y_offset, int* width, int* height) @extern("gtk_tree_view_column_cell_get_size");

<* Maps to cell_is_visible *>
extern fn bool TreeViewColumn.cell_is_visible(&self) @extern("gtk_tree_view_column_cell_is_visible");

<* Maps to cell_set_cell_data *>
extern fn void TreeViewColumn.cell_set_cell_data(&self, TreeModel* tree_model, TreeIter* iter, bool is_expander, bool is_expanded) @extern("gtk_tree_view_column_cell_set_cell_data");

<* Maps to clear *>
extern fn void TreeViewColumn.clear(&self) @extern("gtk_tree_view_column_clear");

<* Maps to clear_attributes *>
extern fn void TreeViewColumn.clear_attributes(&self, CellRenderer* cell_renderer) @extern("gtk_tree_view_column_clear_attributes");

<* Maps to clicked *>
extern fn void TreeViewColumn.clicked(&self) @extern("gtk_tree_view_column_clicked");

<* Maps to focus_cell *>
extern fn void TreeViewColumn.focus_cell(&self, CellRenderer* cell) @extern("gtk_tree_view_column_focus_cell");

<* Maps to get_alignment *>
extern fn float TreeViewColumn.get_alignment(&self) @extern("gtk_tree_view_column_get_alignment");

<* Maps to get_button *>
extern fn Widget* TreeViewColumn.get_button(&self) @extern("gtk_tree_view_column_get_button");

<* Maps to get_clickable *>
extern fn bool TreeViewColumn.get_clickable(&self) @extern("gtk_tree_view_column_get_clickable");

<* Maps to get_expand *>
extern fn bool TreeViewColumn.get_expand(&self) @extern("gtk_tree_view_column_get_expand");

<* Maps to get_fixed_width *>
extern fn int TreeViewColumn.get_fixed_width(&self) @extern("gtk_tree_view_column_get_fixed_width");

<* Maps to get_max_width *>
extern fn int TreeViewColumn.get_max_width(&self) @extern("gtk_tree_view_column_get_max_width");

<* Maps to get_min_width *>
extern fn int TreeViewColumn.get_min_width(&self) @extern("gtk_tree_view_column_get_min_width");

<* Maps to get_reorderable *>
extern fn bool TreeViewColumn.get_reorderable(&self) @extern("gtk_tree_view_column_get_reorderable");

<* Maps to get_resizable *>
extern fn bool TreeViewColumn.get_resizable(&self) @extern("gtk_tree_view_column_get_resizable");

<* Maps to get_sizing *>
extern fn TreeViewColumnSizing TreeViewColumn.get_sizing(&self) @extern("gtk_tree_view_column_get_sizing");

<* Maps to get_sort_column_id *>
extern fn int TreeViewColumn.get_sort_column_id(&self) @extern("gtk_tree_view_column_get_sort_column_id");

<* Maps to get_sort_indicator *>
extern fn bool TreeViewColumn.get_sort_indicator(&self) @extern("gtk_tree_view_column_get_sort_indicator");

<* Maps to get_sort_order *>
extern fn SortType TreeViewColumn.get_sort_order(&self) @extern("gtk_tree_view_column_get_sort_order");

<* Maps to get_spacing *>
extern fn int TreeViewColumn.get_spacing(&self) @extern("gtk_tree_view_column_get_spacing");

<* Maps to get_title *>
extern fn ZString TreeViewColumn.get_title(&self) @extern("gtk_tree_view_column_get_title");

<* Maps to get_tree_view *>
extern fn Widget* TreeViewColumn.get_tree_view(&self) @extern("gtk_tree_view_column_get_tree_view");

<* Maps to get_visible *>
extern fn bool TreeViewColumn.get_visible(&self) @extern("gtk_tree_view_column_get_visible");

<* Maps to get_widget *>
extern fn Widget* TreeViewColumn.get_widget(&self) @extern("gtk_tree_view_column_get_widget");

<* Maps to get_width *>
extern fn int TreeViewColumn.get_width(&self) @extern("gtk_tree_view_column_get_width");

<* Maps to get_x_offset *>
extern fn int TreeViewColumn.get_x_offset(&self) @extern("gtk_tree_view_column_get_x_offset");

<* Maps to pack_end *>
extern fn void TreeViewColumn.pack_end(&self, CellRenderer* cell, bool expand) @extern("gtk_tree_view_column_pack_end");

<* Maps to pack_start *>
extern fn void TreeViewColumn.pack_start(&self, CellRenderer* cell, bool expand) @extern("gtk_tree_view_column_pack_start");

<* Maps to queue_resize *>
extern fn void TreeViewColumn.queue_resize(&self) @extern("gtk_tree_view_column_queue_resize");

<* Maps to set_alignment *>
extern fn void TreeViewColumn.set_alignment(&self, float xalign) @extern("gtk_tree_view_column_set_alignment");

<* Maps to set_attributes *>
extern fn void TreeViewColumn.set_attributes(&self, CellRenderer* cell_renderer, any rest) @extern("gtk_tree_view_column_set_attributes");

<* Maps to set_cell_data_func *>
extern fn void TreeViewColumn.set_cell_data_func(&self, CellRenderer* cell_renderer, TreeCellDataFunc func, void* func_data, glib::DestroyNotify destroy) @extern("gtk_tree_view_column_set_cell_data_func");

<* Maps to set_clickable *>
extern fn void TreeViewColumn.set_clickable(&self, bool clickable) @extern("gtk_tree_view_column_set_clickable");

<* Maps to set_expand *>
extern fn void TreeViewColumn.set_expand(&self, bool expand) @extern("gtk_tree_view_column_set_expand");

<* Maps to set_fixed_width *>
extern fn void TreeViewColumn.set_fixed_width(&self, int fixed_width) @extern("gtk_tree_view_column_set_fixed_width");

<* Maps to set_max_width *>
extern fn void TreeViewColumn.set_max_width(&self, int max_width) @extern("gtk_tree_view_column_set_max_width");

<* Maps to set_min_width *>
extern fn void TreeViewColumn.set_min_width(&self, int min_width) @extern("gtk_tree_view_column_set_min_width");

<* Maps to set_reorderable *>
extern fn void TreeViewColumn.set_reorderable(&self, bool reorderable) @extern("gtk_tree_view_column_set_reorderable");

<* Maps to set_resizable *>
extern fn void TreeViewColumn.set_resizable(&self, bool resizable) @extern("gtk_tree_view_column_set_resizable");

<* Maps to set_sizing *>
extern fn void TreeViewColumn.set_sizing(&self, TreeViewColumnSizing type) @extern("gtk_tree_view_column_set_sizing");

<* Maps to set_sort_column_id *>
extern fn void TreeViewColumn.set_sort_column_id(&self, int sort_column_id) @extern("gtk_tree_view_column_set_sort_column_id");

<* Maps to set_sort_indicator *>
extern fn void TreeViewColumn.set_sort_indicator(&self, bool setting) @extern("gtk_tree_view_column_set_sort_indicator");

<* Maps to set_sort_order *>
extern fn void TreeViewColumn.set_sort_order(&self, SortType order) @extern("gtk_tree_view_column_set_sort_order");

<* Maps to set_spacing *>
extern fn void TreeViewColumn.set_spacing(&self, int spacing) @extern("gtk_tree_view_column_set_spacing");

<* Maps to set_title *>
extern fn void TreeViewColumn.set_title(&self, ZString title) @extern("gtk_tree_view_column_set_title");

<* Maps to set_visible *>
extern fn void TreeViewColumn.set_visible(&self, bool visible) @extern("gtk_tree_view_column_set_visible");

<* Maps to set_widget *>
extern fn void TreeViewColumn.set_widget(&self, Widget* widget) @extern("gtk_tree_view_column_set_widget");


<* Maps to GtkUriLauncher *>
distinct UriLauncher = void*;

fn gobject::Object* UriLauncher.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_uri *>
extern fn ZString UriLauncher.get_uri(&self) @extern("gtk_uri_launcher_get_uri");

<* Maps to launch *>
extern fn void UriLauncher.launch(&self, Window* parent, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gtk_uri_launcher_launch");

<* Maps to launch_finish *>
extern fn bool UriLauncher.launch_finish(&self, gio::AsyncResult* result) @extern("gtk_uri_launcher_launch_finish");

<* Maps to set_uri *>
extern fn void UriLauncher.set_uri(&self, ZString uri) @extern("gtk_uri_launcher_set_uri");


<* Maps to GtkVideo *>
distinct Video = void*;

fn Widget* Video.as_Widget(&self) => (Widget*)(self);


<* Maps to get_autoplay *>
extern fn bool Video.get_autoplay(&self) @extern("gtk_video_get_autoplay");

<* Maps to get_file *>
extern fn gio::File* Video.get_file(&self) @extern("gtk_video_get_file");

<* Maps to get_graphics_offload *>
extern fn GraphicsOffloadEnabled Video.get_graphics_offload(&self) @extern("gtk_video_get_graphics_offload");

<* Maps to get_loop *>
extern fn bool Video.get_loop(&self) @extern("gtk_video_get_loop");

<* Maps to get_media_stream *>
extern fn MediaStream* Video.get_media_stream(&self) @extern("gtk_video_get_media_stream");

<* Maps to set_autoplay *>
extern fn void Video.set_autoplay(&self, bool autoplay) @extern("gtk_video_set_autoplay");

<* Maps to set_file *>
extern fn void Video.set_file(&self, gio::File* file) @extern("gtk_video_set_file");

<* Maps to set_filename *>
extern fn void Video.set_filename(&self, ZString filename) @extern("gtk_video_set_filename");

<* Maps to set_graphics_offload *>
extern fn void Video.set_graphics_offload(&self, GraphicsOffloadEnabled enabled) @extern("gtk_video_set_graphics_offload");

<* Maps to set_loop *>
extern fn void Video.set_loop(&self, bool loop) @extern("gtk_video_set_loop");

<* Maps to set_media_stream *>
extern fn void Video.set_media_stream(&self, MediaStream* stream) @extern("gtk_video_set_media_stream");

<* Maps to set_resource *>
extern fn void Video.set_resource(&self, ZString resource_path) @extern("gtk_video_set_resource");


<* Maps to GtkViewport *>
distinct Viewport = void*;

fn Widget* Viewport.as_Widget(&self) => (Widget*)(self);


<* Maps to get_child *>
extern fn Widget* Viewport.get_child(&self) @extern("gtk_viewport_get_child");

<* Maps to get_scroll_to_focus *>
extern fn bool Viewport.get_scroll_to_focus(&self) @extern("gtk_viewport_get_scroll_to_focus");

<* Maps to scroll_to *>
extern fn void Viewport.scroll_to(&self, Widget* descendant, ScrollInfo* scroll) @extern("gtk_viewport_scroll_to");

<* Maps to set_child *>
extern fn void Viewport.set_child(&self, Widget* child) @extern("gtk_viewport_set_child");

<* Maps to set_scroll_to_focus *>
extern fn void Viewport.set_scroll_to_focus(&self, bool scroll_to_focus) @extern("gtk_viewport_set_scroll_to_focus");


<* Maps to GtkVolumeButton *>
distinct VolumeButton = void*;

fn ScaleButton* VolumeButton.as_ScaleButton(&self) => (ScaleButton*)(self);



<* Maps to GtkWidget *>
distinct Widget = void*;

fn gobject::InitiallyUnowned* Widget.as_gobject_InitiallyUnowned(&self) => (gobject::InitiallyUnowned*)(self);


<* Maps to action_set_enabled *>
extern fn void Widget.action_set_enabled(&self, ZString action_name, bool enabled) @extern("gtk_widget_action_set_enabled");

<* Maps to activate *>
extern fn bool Widget.activate(&self) @extern("gtk_widget_activate");

<* Maps to activate_action *>
extern fn bool Widget.activate_action(&self, ZString name, ZString format_string, any rest) @extern("gtk_widget_activate_action");

<* Maps to activate_action_variant *>
extern fn bool Widget.activate_action_variant(&self, ZString name, glib::Variant* args) @extern("gtk_widget_activate_action_variant");

<* Maps to activate_default *>
extern fn void Widget.activate_default(&self) @extern("gtk_widget_activate_default");

<* Maps to add_controller *>
extern fn void Widget.add_controller(&self, EventController* controller) @extern("gtk_widget_add_controller");

<* Maps to add_css_class *>
extern fn void Widget.add_css_class(&self, ZString css_class) @extern("gtk_widget_add_css_class");

<* Maps to add_mnemonic_label *>
extern fn void Widget.add_mnemonic_label(&self, Widget* label) @extern("gtk_widget_add_mnemonic_label");

<* Maps to add_tick_callback *>
extern fn uint Widget.add_tick_callback(&self, TickCallback callback, void* user_data, glib::DestroyNotify notify) @extern("gtk_widget_add_tick_callback");

<* Maps to allocate *>
extern fn void Widget.allocate(&self, int width, int height, int baseline, gsk::Transform* transform) @extern("gtk_widget_allocate");

<* Maps to child_focus *>
extern fn bool Widget.child_focus(&self, DirectionType direction) @extern("gtk_widget_child_focus");

<* Maps to compute_bounds *>
extern fn bool Widget.compute_bounds(&self, Widget* target, graphene::Rect* out_bounds) @extern("gtk_widget_compute_bounds");

<* Maps to compute_expand *>
extern fn bool Widget.compute_expand(&self, Orientation orientation) @extern("gtk_widget_compute_expand");

<* Maps to compute_point *>
extern fn bool Widget.compute_point(&self, Widget* target, graphene::Point* point, graphene::Point* out_point) @extern("gtk_widget_compute_point");

<* Maps to compute_transform *>
extern fn bool Widget.compute_transform(&self, Widget* target, graphene::Matrix* out_transform) @extern("gtk_widget_compute_transform");

<* Maps to contains *>
extern fn bool Widget.contains(&self, double x, double y) @extern("gtk_widget_contains");

<* Maps to create_pango_context *>
extern fn pango::Context* Widget.create_pango_context(&self) @extern("gtk_widget_create_pango_context");

<* Maps to create_pango_layout *>
extern fn pango::Layout* Widget.create_pango_layout(&self, ZString text) @extern("gtk_widget_create_pango_layout");

<* Maps to dispose_template *>
extern fn void Widget.dispose_template(&self, usz widget_type) @extern("gtk_widget_dispose_template");

<* Maps to drag_check_threshold *>
extern fn bool Widget.drag_check_threshold(&self, int start_x, int start_y, int current_x, int current_y) @extern("gtk_drag_check_threshold");

<* Maps to error_bell *>
extern fn void Widget.error_bell(&self) @extern("gtk_widget_error_bell");

<* Maps to get_allocated_baseline *>
extern fn int Widget.get_allocated_baseline(&self) @extern("gtk_widget_get_allocated_baseline");

<* Maps to get_allocated_height *>
extern fn int Widget.get_allocated_height(&self) @extern("gtk_widget_get_allocated_height");

<* Maps to get_allocated_width *>
extern fn int Widget.get_allocated_width(&self) @extern("gtk_widget_get_allocated_width");

<* Maps to get_allocation *>
extern fn void Widget.get_allocation(&self, Allocation* allocation) @extern("gtk_widget_get_allocation");

<* Maps to get_ancestor *>
extern fn Widget* Widget.get_ancestor(&self, usz widget_type) @extern("gtk_widget_get_ancestor");

<* Maps to get_baseline *>
extern fn int Widget.get_baseline(&self) @extern("gtk_widget_get_baseline");

<* Maps to get_can_focus *>
extern fn bool Widget.get_can_focus(&self) @extern("gtk_widget_get_can_focus");

<* Maps to get_can_target *>
extern fn bool Widget.get_can_target(&self) @extern("gtk_widget_get_can_target");

<* Maps to get_child_visible *>
extern fn bool Widget.get_child_visible(&self) @extern("gtk_widget_get_child_visible");

<* Maps to get_clipboard *>
extern fn gdk::Clipboard* Widget.get_clipboard(&self) @extern("gtk_widget_get_clipboard");

<* Maps to get_color *>
extern fn void Widget.get_color(&self, gdk::Rgba* color) @extern("gtk_widget_get_color");

<* Maps to get_css_classes *>
extern fn ZString Widget.get_css_classes(&self) @extern("gtk_widget_get_css_classes");

<* Maps to get_css_name *>
extern fn ZString Widget.get_css_name(&self) @extern("gtk_widget_get_css_name");

<* Maps to get_cursor *>
extern fn gdk::Cursor* Widget.get_cursor(&self) @extern("gtk_widget_get_cursor");

<* Maps to get_direction *>
extern fn TextDirection Widget.get_direction(&self) @extern("gtk_widget_get_direction");

<* Maps to get_display *>
extern fn gdk::Display* Widget.get_display(&self) @extern("gtk_widget_get_display");

<* Maps to get_first_child *>
extern fn Widget* Widget.get_first_child(&self) @extern("gtk_widget_get_first_child");

<* Maps to get_focus_child *>
extern fn Widget* Widget.get_focus_child(&self) @extern("gtk_widget_get_focus_child");

<* Maps to get_focus_on_click *>
extern fn bool Widget.get_focus_on_click(&self) @extern("gtk_widget_get_focus_on_click");

<* Maps to get_focusable *>
extern fn bool Widget.get_focusable(&self) @extern("gtk_widget_get_focusable");

<* Maps to get_font_map *>
extern fn pango::FontMap* Widget.get_font_map(&self) @extern("gtk_widget_get_font_map");

<* Maps to get_font_options *>
extern fn cairo::FontOptions* Widget.get_font_options(&self) @extern("gtk_widget_get_font_options");

<* Maps to get_frame_clock *>
extern fn gdk::FrameClock* Widget.get_frame_clock(&self) @extern("gtk_widget_get_frame_clock");

<* Maps to get_halign *>
extern fn Align Widget.get_halign(&self) @extern("gtk_widget_get_halign");

<* Maps to get_has_tooltip *>
extern fn bool Widget.get_has_tooltip(&self) @extern("gtk_widget_get_has_tooltip");

<* Maps to get_height *>
extern fn int Widget.get_height(&self) @extern("gtk_widget_get_height");

<* Maps to get_hexpand *>
extern fn bool Widget.get_hexpand(&self) @extern("gtk_widget_get_hexpand");

<* Maps to get_hexpand_set *>
extern fn bool Widget.get_hexpand_set(&self) @extern("gtk_widget_get_hexpand_set");

<* Maps to get_last_child *>
extern fn Widget* Widget.get_last_child(&self) @extern("gtk_widget_get_last_child");

<* Maps to get_layout_manager *>
extern fn LayoutManager* Widget.get_layout_manager(&self) @extern("gtk_widget_get_layout_manager");

<* Maps to get_mapped *>
extern fn bool Widget.get_mapped(&self) @extern("gtk_widget_get_mapped");

<* Maps to get_margin_bottom *>
extern fn int Widget.get_margin_bottom(&self) @extern("gtk_widget_get_margin_bottom");

<* Maps to get_margin_end *>
extern fn int Widget.get_margin_end(&self) @extern("gtk_widget_get_margin_end");

<* Maps to get_margin_start *>
extern fn int Widget.get_margin_start(&self) @extern("gtk_widget_get_margin_start");

<* Maps to get_margin_top *>
extern fn int Widget.get_margin_top(&self) @extern("gtk_widget_get_margin_top");

<* Maps to get_name *>
extern fn ZString Widget.get_name(&self) @extern("gtk_widget_get_name");

<* Maps to get_native *>
extern fn Native* Widget.get_native(&self) @extern("gtk_widget_get_native");

<* Maps to get_next_sibling *>
extern fn Widget* Widget.get_next_sibling(&self) @extern("gtk_widget_get_next_sibling");

<* Maps to get_opacity *>
extern fn double Widget.get_opacity(&self) @extern("gtk_widget_get_opacity");

<* Maps to get_overflow *>
extern fn Overflow Widget.get_overflow(&self) @extern("gtk_widget_get_overflow");

<* Maps to get_pango_context *>
extern fn pango::Context* Widget.get_pango_context(&self) @extern("gtk_widget_get_pango_context");

<* Maps to get_parent *>
extern fn Widget* Widget.get_parent(&self) @extern("gtk_widget_get_parent");

<* Maps to get_preferred_size *>
extern fn void Widget.get_preferred_size(&self, Requisition* minimum_size, Requisition* natural_size) @extern("gtk_widget_get_preferred_size");

<* Maps to get_prev_sibling *>
extern fn Widget* Widget.get_prev_sibling(&self) @extern("gtk_widget_get_prev_sibling");

<* Maps to get_primary_clipboard *>
extern fn gdk::Clipboard* Widget.get_primary_clipboard(&self) @extern("gtk_widget_get_primary_clipboard");

<* Maps to get_realized *>
extern fn bool Widget.get_realized(&self) @extern("gtk_widget_get_realized");

<* Maps to get_receives_default *>
extern fn bool Widget.get_receives_default(&self) @extern("gtk_widget_get_receives_default");

<* Maps to get_request_mode *>
extern fn SizeRequestMode Widget.get_request_mode(&self) @extern("gtk_widget_get_request_mode");

<* Maps to get_root *>
extern fn Root* Widget.get_root(&self) @extern("gtk_widget_get_root");

<* Maps to get_scale_factor *>
extern fn int Widget.get_scale_factor(&self) @extern("gtk_widget_get_scale_factor");

<* Maps to get_sensitive *>
extern fn bool Widget.get_sensitive(&self) @extern("gtk_widget_get_sensitive");

<* Maps to get_settings *>
extern fn Settings* Widget.get_settings(&self) @extern("gtk_widget_get_settings");

<* Maps to get_size *>
extern fn int Widget.get_size(&self, Orientation orientation) @extern("gtk_widget_get_size");

<* Maps to get_size_request *>
extern fn void Widget.get_size_request(&self, int* width, int* height) @extern("gtk_widget_get_size_request");

<* Maps to get_state_flags *>
extern fn StateFlags Widget.get_state_flags(&self) @extern("gtk_widget_get_state_flags");

<* Maps to get_style_context *>
extern fn StyleContext* Widget.get_style_context(&self) @extern("gtk_widget_get_style_context");

<* Maps to get_template_child *>
extern fn gobject::Object* Widget.get_template_child(&self, usz widget_type, ZString name) @extern("gtk_widget_get_template_child");

<* Maps to get_tooltip_markup *>
extern fn ZString Widget.get_tooltip_markup(&self) @extern("gtk_widget_get_tooltip_markup");

<* Maps to get_tooltip_text *>
extern fn ZString Widget.get_tooltip_text(&self) @extern("gtk_widget_get_tooltip_text");

<* Maps to get_valign *>
extern fn Align Widget.get_valign(&self) @extern("gtk_widget_get_valign");

<* Maps to get_vexpand *>
extern fn bool Widget.get_vexpand(&self) @extern("gtk_widget_get_vexpand");

<* Maps to get_vexpand_set *>
extern fn bool Widget.get_vexpand_set(&self) @extern("gtk_widget_get_vexpand_set");

<* Maps to get_visible *>
extern fn bool Widget.get_visible(&self) @extern("gtk_widget_get_visible");

<* Maps to get_width *>
extern fn int Widget.get_width(&self) @extern("gtk_widget_get_width");

<* Maps to grab_focus *>
extern fn bool Widget.grab_focus(&self) @extern("gtk_widget_grab_focus");

<* Maps to has_css_class *>
extern fn bool Widget.has_css_class(&self, ZString css_class) @extern("gtk_widget_has_css_class");

<* Maps to has_default *>
extern fn bool Widget.has_default(&self) @extern("gtk_widget_has_default");

<* Maps to has_focus *>
extern fn bool Widget.has_focus(&self) @extern("gtk_widget_has_focus");

<* Maps to has_visible_focus *>
extern fn bool Widget.has_visible_focus(&self) @extern("gtk_widget_has_visible_focus");

<* Maps to hide *>
extern fn void Widget.hide(&self) @extern("gtk_widget_hide");

<* Maps to in_destruction *>
extern fn bool Widget.in_destruction(&self) @extern("gtk_widget_in_destruction");

<* Maps to init_template *>
extern fn void Widget.init_template(&self) @extern("gtk_widget_init_template");

<* Maps to insert_action_group *>
extern fn void Widget.insert_action_group(&self, ZString name, gio::ActionGroup* group) @extern("gtk_widget_insert_action_group");

<* Maps to insert_after *>
extern fn void Widget.insert_after(&self, Widget* parent, Widget* previous_sibling) @extern("gtk_widget_insert_after");

<* Maps to insert_before *>
extern fn void Widget.insert_before(&self, Widget* parent, Widget* next_sibling) @extern("gtk_widget_insert_before");

<* Maps to is_ancestor *>
extern fn bool Widget.is_ancestor(&self, Widget* ancestor) @extern("gtk_widget_is_ancestor");

<* Maps to is_drawable *>
extern fn bool Widget.is_drawable(&self) @extern("gtk_widget_is_drawable");

<* Maps to is_focus *>
extern fn bool Widget.is_focus(&self) @extern("gtk_widget_is_focus");

<* Maps to is_sensitive *>
extern fn bool Widget.is_sensitive(&self) @extern("gtk_widget_is_sensitive");

<* Maps to is_visible *>
extern fn bool Widget.is_visible(&self) @extern("gtk_widget_is_visible");

<* Maps to keynav_failed *>
extern fn bool Widget.keynav_failed(&self, DirectionType direction) @extern("gtk_widget_keynav_failed");

<* Maps to list_mnemonic_labels *>
extern fn glib::List* Widget.list_mnemonic_labels(&self) @extern("gtk_widget_list_mnemonic_labels");

<* Maps to map *>
extern fn void Widget.map(&self) @extern("gtk_widget_map");

<* Maps to measure *>
extern fn void Widget.measure(&self, Orientation orientation, int for_size, int* minimum, int* natural, int* minimum_baseline, int* natural_baseline) @extern("gtk_widget_measure");

<* Maps to mnemonic_activate *>
extern fn bool Widget.mnemonic_activate(&self, bool group_cycling) @extern("gtk_widget_mnemonic_activate");

<* Maps to observe_children *>
extern fn gio::ListModel* Widget.observe_children(&self) @extern("gtk_widget_observe_children");

<* Maps to observe_controllers *>
extern fn gio::ListModel* Widget.observe_controllers(&self) @extern("gtk_widget_observe_controllers");

<* Maps to pick *>
extern fn Widget* Widget.pick(&self, double x, double y, PickFlags flags) @extern("gtk_widget_pick");

<* Maps to queue_allocate *>
extern fn void Widget.queue_allocate(&self) @extern("gtk_widget_queue_allocate");

<* Maps to queue_draw *>
extern fn void Widget.queue_draw(&self) @extern("gtk_widget_queue_draw");

<* Maps to queue_resize *>
extern fn void Widget.queue_resize(&self) @extern("gtk_widget_queue_resize");

<* Maps to realize *>
extern fn void Widget.realize(&self) @extern("gtk_widget_realize");

<* Maps to remove_controller *>
extern fn void Widget.remove_controller(&self, EventController* controller) @extern("gtk_widget_remove_controller");

<* Maps to remove_css_class *>
extern fn void Widget.remove_css_class(&self, ZString css_class) @extern("gtk_widget_remove_css_class");

<* Maps to remove_mnemonic_label *>
extern fn void Widget.remove_mnemonic_label(&self, Widget* label) @extern("gtk_widget_remove_mnemonic_label");

<* Maps to remove_tick_callback *>
extern fn void Widget.remove_tick_callback(&self, uint id) @extern("gtk_widget_remove_tick_callback");

<* Maps to set_can_focus *>
extern fn void Widget.set_can_focus(&self, bool can_focus) @extern("gtk_widget_set_can_focus");

<* Maps to set_can_target *>
extern fn void Widget.set_can_target(&self, bool can_target) @extern("gtk_widget_set_can_target");

<* Maps to set_child_visible *>
extern fn void Widget.set_child_visible(&self, bool child_visible) @extern("gtk_widget_set_child_visible");

<* Maps to set_css_classes *>
extern fn void Widget.set_css_classes(&self, ZString* classes) @extern("gtk_widget_set_css_classes");

<* Maps to set_cursor *>
extern fn void Widget.set_cursor(&self, gdk::Cursor* cursor) @extern("gtk_widget_set_cursor");

<* Maps to set_cursor_from_name *>
extern fn void Widget.set_cursor_from_name(&self, ZString name) @extern("gtk_widget_set_cursor_from_name");

<* Maps to set_direction *>
extern fn void Widget.set_direction(&self, TextDirection dir) @extern("gtk_widget_set_direction");

<* Maps to set_focus_child *>
extern fn void Widget.set_focus_child(&self, Widget* child) @extern("gtk_widget_set_focus_child");

<* Maps to set_focus_on_click *>
extern fn void Widget.set_focus_on_click(&self, bool focus_on_click) @extern("gtk_widget_set_focus_on_click");

<* Maps to set_focusable *>
extern fn void Widget.set_focusable(&self, bool focusable) @extern("gtk_widget_set_focusable");

<* Maps to set_font_map *>
extern fn void Widget.set_font_map(&self, pango::FontMap* font_map) @extern("gtk_widget_set_font_map");

<* Maps to set_font_options *>
extern fn void Widget.set_font_options(&self, cairo::FontOptions* options) @extern("gtk_widget_set_font_options");

<* Maps to set_halign *>
extern fn void Widget.set_halign(&self, Align align) @extern("gtk_widget_set_halign");

<* Maps to set_has_tooltip *>
extern fn void Widget.set_has_tooltip(&self, bool has_tooltip) @extern("gtk_widget_set_has_tooltip");

<* Maps to set_hexpand *>
extern fn void Widget.set_hexpand(&self, bool expand) @extern("gtk_widget_set_hexpand");

<* Maps to set_hexpand_set *>
extern fn void Widget.set_hexpand_set(&self, bool set) @extern("gtk_widget_set_hexpand_set");

<* Maps to set_layout_manager *>
extern fn void Widget.set_layout_manager(&self, LayoutManager* layout_manager) @extern("gtk_widget_set_layout_manager");

<* Maps to set_margin_bottom *>
extern fn void Widget.set_margin_bottom(&self, int margin) @extern("gtk_widget_set_margin_bottom");

<* Maps to set_margin_end *>
extern fn void Widget.set_margin_end(&self, int margin) @extern("gtk_widget_set_margin_end");

<* Maps to set_margin_start *>
extern fn void Widget.set_margin_start(&self, int margin) @extern("gtk_widget_set_margin_start");

<* Maps to set_margin_top *>
extern fn void Widget.set_margin_top(&self, int margin) @extern("gtk_widget_set_margin_top");

<* Maps to set_name *>
extern fn void Widget.set_name(&self, ZString name) @extern("gtk_widget_set_name");

<* Maps to set_opacity *>
extern fn void Widget.set_opacity(&self, double opacity) @extern("gtk_widget_set_opacity");

<* Maps to set_overflow *>
extern fn void Widget.set_overflow(&self, Overflow overflow) @extern("gtk_widget_set_overflow");

<* Maps to set_parent *>
extern fn void Widget.set_parent(&self, Widget* parent) @extern("gtk_widget_set_parent");

<* Maps to set_receives_default *>
extern fn void Widget.set_receives_default(&self, bool receives_default) @extern("gtk_widget_set_receives_default");

<* Maps to set_sensitive *>
extern fn void Widget.set_sensitive(&self, bool sensitive) @extern("gtk_widget_set_sensitive");

<* Maps to set_size_request *>
extern fn void Widget.set_size_request(&self, int width, int height) @extern("gtk_widget_set_size_request");

<* Maps to set_state_flags *>
extern fn void Widget.set_state_flags(&self, StateFlags flags, bool clear) @extern("gtk_widget_set_state_flags");

<* Maps to set_tooltip_markup *>
extern fn void Widget.set_tooltip_markup(&self, ZString markup) @extern("gtk_widget_set_tooltip_markup");

<* Maps to set_tooltip_text *>
extern fn void Widget.set_tooltip_text(&self, ZString text) @extern("gtk_widget_set_tooltip_text");

<* Maps to set_valign *>
extern fn void Widget.set_valign(&self, Align align) @extern("gtk_widget_set_valign");

<* Maps to set_vexpand *>
extern fn void Widget.set_vexpand(&self, bool expand) @extern("gtk_widget_set_vexpand");

<* Maps to set_vexpand_set *>
extern fn void Widget.set_vexpand_set(&self, bool set) @extern("gtk_widget_set_vexpand_set");

<* Maps to set_visible *>
extern fn void Widget.set_visible(&self, bool visible) @extern("gtk_widget_set_visible");

<* Maps to should_layout *>
extern fn bool Widget.should_layout(&self) @extern("gtk_widget_should_layout");

<* Maps to show *>
extern fn void Widget.show(&self) @extern("gtk_widget_show");

<* Maps to size_allocate *>
extern fn void Widget.size_allocate(&self, Allocation* allocation, int baseline) @extern("gtk_widget_size_allocate");

<* Maps to snapshot_child *>
extern fn void Widget.snapshot_child(&self, Widget* child, Snapshot* snapshot) @extern("gtk_widget_snapshot_child");

<* Maps to translate_coordinates *>
extern fn bool Widget.translate_coordinates(&self, Widget* dest_widget, double src_x, double src_y, double* dest_x, double* dest_y) @extern("gtk_widget_translate_coordinates");

<* Maps to trigger_tooltip_query *>
extern fn void Widget.trigger_tooltip_query(&self) @extern("gtk_widget_trigger_tooltip_query");

<* Maps to unmap *>
extern fn void Widget.unmap(&self) @extern("gtk_widget_unmap");

<* Maps to unparent *>
extern fn void Widget.unparent(&self) @extern("gtk_widget_unparent");

<* Maps to unrealize *>
extern fn void Widget.unrealize(&self) @extern("gtk_widget_unrealize");

<* Maps to unset_state_flags *>
extern fn void Widget.unset_state_flags(&self, StateFlags flags) @extern("gtk_widget_unset_state_flags");


<* Maps to GtkWidgetPaintable *>
distinct WidgetPaintable = void*;

fn gobject::Object* WidgetPaintable.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to get_widget *>
extern fn Widget* WidgetPaintable.get_widget(&self) @extern("gtk_widget_paintable_get_widget");

<* Maps to set_widget *>
extern fn void WidgetPaintable.set_widget(&self, Widget* widget) @extern("gtk_widget_paintable_set_widget");


<* Maps to GtkWindow *>
distinct Window = void*;

fn Widget* Window.as_Widget(&self) => (Widget*)(self);


<* Maps to close *>
extern fn void Window.close(&self) @extern("gtk_window_close");

<* Maps to destroy *>
extern fn void Window.destroy(&self) @extern("gtk_window_destroy");

<* Maps to fullscreen *>
extern fn void Window.fullscreen(&self) @extern("gtk_window_fullscreen");

<* Maps to fullscreen_on_monitor *>
extern fn void Window.fullscreen_on_monitor(&self, gdk::Monitor* monitor) @extern("gtk_window_fullscreen_on_monitor");

<* Maps to get_application *>
extern fn Application* Window.get_application(&self) @extern("gtk_window_get_application");

<* Maps to get_child *>
extern fn Widget* Window.get_child(&self) @extern("gtk_window_get_child");

<* Maps to get_decorated *>
extern fn bool Window.get_decorated(&self) @extern("gtk_window_get_decorated");

<* Maps to get_default_size *>
extern fn void Window.get_default_size(&self, int* width, int* height) @extern("gtk_window_get_default_size");

<* Maps to get_default_widget *>
extern fn Widget* Window.get_default_widget(&self) @extern("gtk_window_get_default_widget");

<* Maps to get_deletable *>
extern fn bool Window.get_deletable(&self) @extern("gtk_window_get_deletable");

<* Maps to get_destroy_with_parent *>
extern fn bool Window.get_destroy_with_parent(&self) @extern("gtk_window_get_destroy_with_parent");

<* Maps to get_focus *>
extern fn Widget* Window.get_focus(&self) @extern("gtk_window_get_focus");

<* Maps to get_focus_visible *>
extern fn bool Window.get_focus_visible(&self) @extern("gtk_window_get_focus_visible");

<* Maps to get_group *>
extern fn WindowGroup* Window.get_group(&self) @extern("gtk_window_get_group");

<* Maps to get_handle_menubar_accel *>
extern fn bool Window.get_handle_menubar_accel(&self) @extern("gtk_window_get_handle_menubar_accel");

<* Maps to get_hide_on_close *>
extern fn bool Window.get_hide_on_close(&self) @extern("gtk_window_get_hide_on_close");

<* Maps to get_icon_name *>
extern fn ZString Window.get_icon_name(&self) @extern("gtk_window_get_icon_name");

<* Maps to get_mnemonics_visible *>
extern fn bool Window.get_mnemonics_visible(&self) @extern("gtk_window_get_mnemonics_visible");

<* Maps to get_modal *>
extern fn bool Window.get_modal(&self) @extern("gtk_window_get_modal");

<* Maps to get_resizable *>
extern fn bool Window.get_resizable(&self) @extern("gtk_window_get_resizable");

<* Maps to get_title *>
extern fn ZString Window.get_title(&self) @extern("gtk_window_get_title");

<* Maps to get_titlebar *>
extern fn Widget* Window.get_titlebar(&self) @extern("gtk_window_get_titlebar");

<* Maps to get_transient_for *>
extern fn Window* Window.get_transient_for(&self) @extern("gtk_window_get_transient_for");

<* Maps to has_group *>
extern fn bool Window.has_group(&self) @extern("gtk_window_has_group");

<* Maps to is_active *>
extern fn bool Window.is_active(&self) @extern("gtk_window_is_active");

<* Maps to is_fullscreen *>
extern fn bool Window.is_fullscreen(&self) @extern("gtk_window_is_fullscreen");

<* Maps to is_maximized *>
extern fn bool Window.is_maximized(&self) @extern("gtk_window_is_maximized");

<* Maps to is_suspended *>
extern fn bool Window.is_suspended(&self) @extern("gtk_window_is_suspended");

<* Maps to maximize *>
extern fn void Window.maximize(&self) @extern("gtk_window_maximize");

<* Maps to minimize *>
extern fn void Window.minimize(&self) @extern("gtk_window_minimize");

<* Maps to present *>
extern fn void Window.present(&self) @extern("gtk_window_present");

<* Maps to present_with_time *>
extern fn void Window.present_with_time(&self, uint timestamp) @extern("gtk_window_present_with_time");

<* Maps to set_application *>
extern fn void Window.set_application(&self, Application* application) @extern("gtk_window_set_application");

<* Maps to set_child *>
extern fn void Window.set_child(&self, Widget* child) @extern("gtk_window_set_child");

<* Maps to set_decorated *>
extern fn void Window.set_decorated(&self, bool setting) @extern("gtk_window_set_decorated");

<* Maps to set_default_size *>
extern fn void Window.set_default_size(&self, int width, int height) @extern("gtk_window_set_default_size");

<* Maps to set_default_widget *>
extern fn void Window.set_default_widget(&self, Widget* default_widget) @extern("gtk_window_set_default_widget");

<* Maps to set_deletable *>
extern fn void Window.set_deletable(&self, bool setting) @extern("gtk_window_set_deletable");

<* Maps to set_destroy_with_parent *>
extern fn void Window.set_destroy_with_parent(&self, bool setting) @extern("gtk_window_set_destroy_with_parent");

<* Maps to set_display *>
extern fn void Window.set_display(&self, gdk::Display* display) @extern("gtk_window_set_display");

<* Maps to set_focus *>
extern fn void Window.set_focus(&self, Widget* focus) @extern("gtk_window_set_focus");

<* Maps to set_focus_visible *>
extern fn void Window.set_focus_visible(&self, bool setting) @extern("gtk_window_set_focus_visible");

<* Maps to set_handle_menubar_accel *>
extern fn void Window.set_handle_menubar_accel(&self, bool handle_menubar_accel) @extern("gtk_window_set_handle_menubar_accel");

<* Maps to set_hide_on_close *>
extern fn void Window.set_hide_on_close(&self, bool setting) @extern("gtk_window_set_hide_on_close");

<* Maps to set_icon_name *>
extern fn void Window.set_icon_name(&self, ZString name) @extern("gtk_window_set_icon_name");

<* Maps to set_mnemonics_visible *>
extern fn void Window.set_mnemonics_visible(&self, bool setting) @extern("gtk_window_set_mnemonics_visible");

<* Maps to set_modal *>
extern fn void Window.set_modal(&self, bool modal) @extern("gtk_window_set_modal");

<* Maps to set_resizable *>
extern fn void Window.set_resizable(&self, bool resizable) @extern("gtk_window_set_resizable");

<* Maps to set_startup_id *>
extern fn void Window.set_startup_id(&self, ZString startup_id) @extern("gtk_window_set_startup_id");

<* Maps to set_title *>
extern fn void Window.set_title(&self, ZString title) @extern("gtk_window_set_title");

<* Maps to set_titlebar *>
extern fn void Window.set_titlebar(&self, Widget* titlebar) @extern("gtk_window_set_titlebar");

<* Maps to set_transient_for *>
extern fn void Window.set_transient_for(&self, Window* parent) @extern("gtk_window_set_transient_for");

<* Maps to unfullscreen *>
extern fn void Window.unfullscreen(&self) @extern("gtk_window_unfullscreen");

<* Maps to unmaximize *>
extern fn void Window.unmaximize(&self) @extern("gtk_window_unmaximize");

<* Maps to unminimize *>
extern fn void Window.unminimize(&self) @extern("gtk_window_unminimize");


<* Maps to GtkWindowControls *>
distinct WindowControls = void*;

fn Widget* WindowControls.as_Widget(&self) => (Widget*)(self);


<* Maps to get_decoration_layout *>
extern fn ZString WindowControls.get_decoration_layout(&self) @extern("gtk_window_controls_get_decoration_layout");

<* Maps to get_empty *>
extern fn bool WindowControls.get_empty(&self) @extern("gtk_window_controls_get_empty");

<* Maps to get_side *>
extern fn PackType WindowControls.get_side(&self) @extern("gtk_window_controls_get_side");

<* Maps to set_decoration_layout *>
extern fn void WindowControls.set_decoration_layout(&self, ZString layout) @extern("gtk_window_controls_set_decoration_layout");

<* Maps to set_side *>
extern fn void WindowControls.set_side(&self, PackType side) @extern("gtk_window_controls_set_side");


<* Maps to GtkWindowGroup *>
distinct WindowGroup = void*;

fn gobject::Object* WindowGroup.as_gobject_Object(&self) => (gobject::Object*)(self);


<* Maps to add_window *>
extern fn void WindowGroup.add_window(&self, Window* window) @extern("gtk_window_group_add_window");

<* Maps to list_windows *>
extern fn glib::List* WindowGroup.list_windows(&self) @extern("gtk_window_group_list_windows");

<* Maps to remove_window *>
extern fn void WindowGroup.remove_window(&self, Window* window) @extern("gtk_window_group_remove_window");


<* Maps to GtkWindowHandle *>
distinct WindowHandle = void*;

fn Widget* WindowHandle.as_Widget(&self) => (Widget*)(self);


<* Maps to get_child *>
extern fn Widget* WindowHandle.get_child(&self) @extern("gtk_window_handle_get_child");

<* Maps to set_child *>
extern fn void WindowHandle.set_child(&self, Widget* child) @extern("gtk_window_handle_set_child");




<* Maps to GtkAccessible *>
interface Accessible {

  fn void announce(ZString message, AccessibleAnnouncementPriority priority);

  fn Accessible* get_accessible_parent();

  fn AccessibleRole get_accessible_role();

  fn ATContext* get_at_context();

  fn bool get_bounds(int* x, int* y, int* width, int* height);

  fn Accessible* get_first_accessible_child();

  fn Accessible* get_next_accessible_sibling();

  fn bool get_platform_state(AccessiblePlatformState state);

  fn void reset_property(AccessibleProperty property);

  fn void reset_relation(AccessibleRelation relation);

  fn void reset_state(AccessibleState state);

  fn void set_accessible_parent(Accessible* parent, Accessible* next_sibling);

  fn void update_next_accessible_sibling(Accessible* new_sibling);

  fn void update_property(AccessibleProperty first_property, any rest);

  fn void update_property_value(int n_properties, AccessibleProperty properties, gobject::Value values);

  fn void update_relation(AccessibleRelation first_relation, any rest);

  fn void update_relation_value(int n_relations, AccessibleRelation relations, gobject::Value values);

  fn void update_state(AccessibleState first_state, any rest);

  fn void update_state_value(int n_states, AccessibleState states, gobject::Value values);

}

<* Maps to GtkAccessibleRange *>
interface AccessibleRange {

}

<* Maps to GtkAccessibleText *>
interface AccessibleText {

  fn void update_caret_position();

  fn void update_contents(AccessibleTextContentChange change, uint start, uint end);

  fn void update_selection_bound();

}

<* Maps to GtkActionable *>
interface Actionable {

  fn ZString get_action_name();

  fn glib::Variant* get_action_target_value();

  fn void set_action_name(ZString action_name);

  fn void set_action_target(ZString format_string, any rest);

  fn void set_action_target_value(glib::Variant* target_value);

  fn void set_detailed_action_name(ZString detailed_action_name);

}

<* Maps to GtkAppChooser *>
interface AppChooser {

  fn gio::AppInfo* get_app_info();

  fn ZString* get_content_type();

  fn void refresh();

}

<* Maps to GtkBuildable *>
interface Buildable {

  fn ZString get_buildable_id();

}

<* Maps to GtkBuilderScope *>
interface BuilderScope {

}

<* Maps to GtkCellEditable *>
interface CellEditable {

  fn void editing_done();

  fn void remove_widget();

  fn void start_editing(gdk::Event* event);

}

<* Maps to GtkCellLayout *>
interface CellLayout {

  fn void add_attribute(CellRenderer* cell, ZString attribute, int column);

  fn void clear();

  fn void clear_attributes(CellRenderer* cell);

  fn CellArea* get_area();

  fn glib::List* get_cells();

  fn void pack_end(CellRenderer* cell, bool expand);

  fn void pack_start(CellRenderer* cell, bool expand);

  fn void reorder(CellRenderer* cell, int position);

  fn void set_attributes(CellRenderer* cell, any rest);

  fn void set_cell_data_func(CellRenderer* cell, CellLayoutDataFunc func, void* func_data, glib::DestroyNotify destroy);

}

<* Maps to GtkColorChooser *>
interface ColorChooser {

  fn void add_palette(Orientation orientation, int colors_per_line, int n_colors, gdk::Rgba colors);

  fn void get_rgba(gdk::Rgba* color);

  fn bool get_use_alpha();

  fn void set_rgba(gdk::Rgba* color);

  fn void set_use_alpha(bool use_alpha);

}

<* Maps to GtkConstraintTarget *>
interface ConstraintTarget {

}

<* Maps to GtkEditable *>
interface Editable {

  fn bool delegate_get_accessible_platform_state(AccessiblePlatformState state);

  fn void delete_selection();

  fn void delete_text(int start_pos, int end_pos);

  fn void finish_delegate();

  fn float get_alignment();

  fn ZString* get_chars(int start_pos, int end_pos);

  fn Editable* get_delegate();

  fn bool get_editable();

  fn bool get_enable_undo();

  fn int get_max_width_chars();

  fn int get_position();

  fn bool get_selection_bounds(int* start_pos, int* end_pos);

  fn ZString get_text();

  fn int get_width_chars();

  fn void init_delegate();

  fn void insert_text(ZString text, int length, int* position);

  fn void select_region(int start_pos, int end_pos);

  fn void set_alignment(float xalign);

  fn void set_editable(bool is_editable);

  fn void set_enable_undo(bool enable_undo);

  fn void set_max_width_chars(int n_chars);

  fn void set_position(int position);

  fn void set_text(ZString text);

  fn void set_width_chars(int n_chars);

}

<* Maps to GtkFileChooser *>
interface FileChooser {

  fn void add_choice(ZString id, ZString label, ZString* options, ZString* option_labels);

  fn void add_filter(FileFilter* filter);

  fn bool add_shortcut_folder(gio::File* folder);

  fn FileChooserAction get_action();

  fn ZString get_choice(ZString id);

  fn bool get_create_folders();

  fn gio::File* get_current_folder();

  fn ZString* get_current_name();

  fn gio::File* get_file();

  fn gio::ListModel* get_files();

  fn FileFilter* get_filter();

  fn gio::ListModel* get_filters();

  fn bool get_select_multiple();

  fn gio::ListModel* get_shortcut_folders();

  fn void remove_choice(ZString id);

  fn void remove_filter(FileFilter* filter);

  fn bool remove_shortcut_folder(gio::File* folder);

  fn void set_action(FileChooserAction action);

  fn void set_choice(ZString id, ZString option);

  fn void set_create_folders(bool create_folders);

  fn bool set_current_folder(gio::File* file);

  fn void set_current_name(ZString name);

  fn bool set_file(gio::File* file);

  fn void set_filter(FileFilter* filter);

  fn void set_select_multiple(bool select_multiple);

}

<* Maps to GtkFontChooser *>
interface FontChooser {

  fn ZString* get_font();

  fn pango::FontDescription* get_font_desc();

  fn pango::FontFace* get_font_face();

  fn pango::FontFamily* get_font_family();

  fn ZString* get_font_features();

  fn pango::FontMap* get_font_map();

  fn int get_font_size();

  fn ZString* get_language();

  fn FontChooserLevel get_level();

  fn ZString* get_preview_text();

  fn bool get_show_preview_entry();

  fn void set_filter_func(FontFilterFunc filter, void* user_data, glib::DestroyNotify destroy);

  fn void set_font(ZString fontname);

  fn void set_font_desc(pango::FontDescription* font_desc);

  fn void set_font_map(pango::FontMap* fontmap);

  fn void set_language(ZString language);

  fn void set_level(FontChooserLevel level);

  fn void set_preview_text(ZString text);

  fn void set_show_preview_entry(bool show_preview_entry);

}

<* Maps to GtkNative *>
interface Native {

  fn gsk::Renderer* get_renderer();

  fn gdk::Surface* get_surface();

  fn void get_surface_transform(double* x, double* y);

  fn void realize();

  fn void unrealize();

}

<* Maps to GtkOrientable *>
interface Orientable {

  fn Orientation get_orientation();

  fn void set_orientation(Orientation orientation);

}

<* Maps to GtkPrintOperationPreview *>
interface PrintOperationPreview {

  fn void end_preview();

  fn bool is_selected(int page_nr);

  fn void render_page(int page_nr);

}

<* Maps to GtkRoot *>
interface Root {

  fn gdk::Display* get_display();

  fn Widget* get_focus();

  fn void set_focus(Widget* focus);

}

<* Maps to GtkScrollable *>
interface Scrollable {

  fn bool get_border(Border* border);

  fn Adjustment* get_hadjustment();

  fn ScrollablePolicy get_hscroll_policy();

  fn Adjustment* get_vadjustment();

  fn ScrollablePolicy get_vscroll_policy();

  fn void set_hadjustment(Adjustment* hadjustment);

  fn void set_hscroll_policy(ScrollablePolicy policy);

  fn void set_vadjustment(Adjustment* vadjustment);

  fn void set_vscroll_policy(ScrollablePolicy policy);

}

<* Maps to GtkSectionModel *>
interface SectionModel {

  fn void get_section(uint position, uint* out_start, uint* out_end);

  fn void sections_changed(uint position, uint n_items);

}

<* Maps to GtkSelectionModel *>
interface SelectionModel {

  fn Bitset* get_selection();

  fn Bitset* get_selection_in_range(uint position, uint n_items);

  fn bool is_selected(uint position);

  fn bool select_all();

  fn bool select_item(uint position, bool unselect_rest);

  fn bool select_range(uint position, uint n_items, bool unselect_rest);

  fn void selection_changed(uint position, uint n_items);

  fn bool set_selection(Bitset* selected, Bitset* mask);

  fn bool unselect_all();

  fn bool unselect_item(uint position);

  fn bool unselect_range(uint position, uint n_items);

}

<* Maps to GtkShortcutManager *>
interface ShortcutManager {

}

<* Maps to GtkStyleProvider *>
interface StyleProvider {

}

<* Maps to GtkSymbolicPaintable *>
interface SymbolicPaintable {

  fn void snapshot_symbolic(gdk::Snapshot* snapshot, double width, double height, gdk::Rgba colors, usz n_colors);

}

<* Maps to GtkTreeDragDest *>
interface TreeDragDest {

  fn bool drag_data_received(TreePath* dest, gobject::Value* value);

  fn bool row_drop_possible(TreePath* dest_path, gobject::Value* value);

}

<* Maps to GtkTreeDragSource *>
interface TreeDragSource {

  fn bool drag_data_delete(TreePath* path);

  fn gdk::ContentProvider* drag_data_get(TreePath* path);

  fn bool row_draggable(TreePath* path);

}

<* Maps to GtkTreeModel *>
interface TreeModel {

  fn TreeModel* filter_new(TreePath* root);

  fn void for_each(TreeModelForeachFunc func, void* user_data);

  fn void get(TreeIter* iter, any rest);

  fn usz get_column_type(int index_);

  fn TreeModelFlags get_flags();

  fn bool get_iter(TreeIter* iter, TreePath* path);

  fn bool get_iter_first(TreeIter* iter);

  fn bool get_iter_from_string(TreeIter* iter, ZString path_string);

  fn int get_n_columns();

  fn TreePath* get_path(TreeIter* iter);

  fn ZString* get_string_from_iter(TreeIter* iter);

  fn void get_valist(TreeIter* iter, ZString var_args);

  fn void get_value(TreeIter* iter, int column, gobject::Value* value);

  fn bool iter_children(TreeIter* iter, TreeIter* parent);

  fn bool iter_has_child(TreeIter* iter);

  fn int iter_n_children(TreeIter* iter);

  fn bool iter_next(TreeIter* iter);

  fn bool iter_nth_child(TreeIter* iter, TreeIter* parent, int n);

  fn bool iter_parent(TreeIter* iter, TreeIter* child);

  fn bool iter_previous(TreeIter* iter);

  fn void ref_node(TreeIter* iter);

  fn void row_changed(TreePath* path, TreeIter* iter);

  fn void row_deleted(TreePath* path);

  fn void row_has_child_toggled(TreePath* path, TreeIter* iter);

  fn void row_inserted(TreePath* path, TreeIter* iter);

  fn void rows_reordered(TreePath* path, TreeIter* iter, int* new_order);

  fn void rows_reordered_with_length(TreePath* path, TreeIter* iter, int new_order, int length);

  fn void unref_node(TreeIter* iter);

}

<* Maps to GtkTreeSortable *>
interface TreeSortable {

  fn bool get_sort_column_id(int* sort_column_id, SortType* order);

  fn bool has_default_sort_func();

  fn void set_default_sort_func(TreeIterCompareFunc sort_func, void* user_data, glib::DestroyNotify destroy);

  fn void set_sort_column_id(int sort_column_id, SortType order);

  fn void set_sort_func(int sort_column_id, TreeIterCompareFunc sort_func, void* user_data, glib::DestroyNotify destroy);

  fn void sort_column_changed();

}
    
///END MODULE gtk
