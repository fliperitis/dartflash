class MouseEvent extends Event
{
  static const String CLICK = "click";
  static const String DOUBLE_CLICK = "doubleClick";

  static const String MOUSE_DOWN = "mouseDown";
  static const String MOUSE_UP = "mouseUp";
  static const String MOUSE_MOVE = "mouseMove";
  static const String MOUSE_OUT = "mouseOut";
  static const String MOUSE_OVER = "mouseOver";
  static const String MOUSE_WHEEL = "mouseWheel";

  static const String MIDDLE_CLICK = "middleClick";
  static const String MIDDLE_MOUSE_DOWN = "middleMouseDown";
  static const String MIDDLE_MOUSE_UP = "middleMouseUp";
  static const String RIGHT_CLICK = "rightClick";
  static const String RIGHT_MOUSE_DOWN = "rightMouseDown";
  static const String RIGHT_MOUSE_UP = "rightMouseUp";

  static const String CONTEXT_MENU = "contextMenu"; // ToDo
  static const String ROLL_OUT = "rollOut";         // ToDo
  static const String ROLL_OVER = "rollOver";       // ToDo

  //-------------------------------------------------------------------------------------------------
  //-------------------------------------------------------------------------------------------------

  num _localX, _localY;
  num _stageX, _stageY;
  bool _buttonDown;

  bool _altKey;
  bool _controlKey;
  bool _ctrlKey;
  bool _shiftKey;

  int _clickCount;
  int _delta;

  bool _isRelatedObjectInaccessible;
  InteractiveObject _relatedObject;

  MouseEvent(String type, [bool bubbles = false]):super(type, bubbles)
  {
    _reset(type, bubbles);
  }

  //-------------------------------------------------------------------------------------------------
  //-------------------------------------------------------------------------------------------------

  void _reset(String type, [bool bubbles = false])
  {
    super._reset(type, bubbles);

    _localX = _localY = 0;
    _stageX = _stageY = 0;
    _buttonDown = false;

    _altKey = false;
    _controlKey = false;
    _ctrlKey = false;
    _shiftKey = false;

    _clickCount = 0;
    _delta = 0;

    _isRelatedObjectInaccessible = false;
    _relatedObject = null;
  }

  //-------------------------------------------------------------------------------------------------
  //-------------------------------------------------------------------------------------------------

  num get localX => _localX;
  num get localY => _localY;
  num get stageX => _stageX;
  num get stageY => _stageY;
  bool get buttonDown => _buttonDown;

  bool get altKey => _altKey;
  bool get controlKey => _controlKey;
  bool get ctrlKey => _ctrlKey;
  bool get shiftKey => _shiftKey;

  int get clickCount => _clickCount;
  int get delta => _delta;

  bool get isRelatedObjectInaccessible => _isRelatedObjectInaccessible;
  InteractiveObject get relatedObject => _relatedObject;

}
