import Foundation

enum RichTextEditorString: String {
    case ok = "richTextEditor.ok"
    case cancel = "richTextEditor.cancel"
    case done = "richTextEditor.done"
    case add = "richTextEditor.add"
    case createLink = "richTextEditor.createLink"
    case textColor = "richTextEditor.textColor"
    case backgroundColor = "richTextEditor.backgroundColor"
    case labelOptional = "richTextEditor.labelOptional"
    case url = "richTextEditor.url"
    case chooseFont = "richTextEditor.chooseFont"
    case chooseFontSize = "richTextEditor.chooseFontSize"
    case chooseFontSizeBetween = "richTextEditor.chooseFontSizeBetween"

    case toolbarBold = "richTextEditor.toolbar.bold"
    case toolbarItalic = "richTextEditor.toolbar.italic"
    case toolbarUnderline = "richTextEditor.toolbar.underline"
    case toolbarStrikethrough = "richTextEditor.toolbar.strikethrough"
    case toolbarLink = "richTextEditor.toolbar.link"
    case toolbarSubscript = "richTextEditor.toolbar.subscript"
    case toolbarSuperscript = "richTextEditor.toolbar.superscript"
    case toolbarOrderedList = "richTextEditor.toolbar.orderedList"
    case toolbarUnorderedList = "richTextEditor.toolbar.unorderedList"
    case toolbarJustifyFull = "richTextEditor.toolbar.justifyFull"
    case toolbarJustifyLeft = "richTextEditor.toolbar.justifyLeft"
    case toolbarJustifyCenter = "richTextEditor.toolbar.justifyCenter"
    case toolbarJustifyRight = "richTextEditor.toolbar.justifyRight"
    case toolbarFontName = "richTextEditor.toolbar.fontName"
    case toolbarFontSize = "richTextEditor.toolbar.fontSize"
    case toolbarForegroundColor = "richTextEditor.toolbar.foregroundColor"
    case toolbarBackgroundColor = "richTextEditor.toolbar.backgroundColor"
    case toolbarOutdent = "richTextEditor.toolbar.outdent"
    case toolbarIndent = "richTextEditor.toolbar.indent"
    case toolbarUndo = "richTextEditor.toolbar.undo"
    case toolbarRedo = "richTextEditor.toolbar.redo"
    case toolbarRemoveFormat = "richTextEditor.toolbar.removeFormat"
    case toolbarShowSource = "richTextEditor.toolbar.showSource"
    case toolbarDismissKeyboard = "richTextEditor.toolbar.dismissKeyboard"

    var localized: String {
        NSLocalizedString(rawValue, bundle: .module, comment: "")
    }
}
