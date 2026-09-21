//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing,
//  software distributed under the License is distributed on an
//  "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
//  KIND, either express or implied.  See the License for the
//  specific language governing permissions and limitations
//  under the License.

import InfomaniakRichHTMLEditor
import UIKit

enum ToolbarAction: Int {

/*
 @"bold",
 @"italic",
 @"subscript",
 @"superscript",
 @"strikethrough",
 @"underline",
 
 @"removeFormat",
 
 @"fonts",

 @"undo",
 @"redo",
 
 @"justifyLeft",
 @"justifyCenter",
 @"justifyRight",
 @"justifyFull",

 @"h1",
 @"h2",
 @"h3",
 @"h4",
 @"h5",
 @"h6",

 @"paragraph",

 @"textcolor",
 @"bgcolor",

 @"unorderedList",
 @"orderedList",

 @"horizontalRule",

 @"indent",
 @"outdent",
 
 @"image",
 @"imageFromDevice",
 
 @"link",
 @"removeLink",
 @"quickLink",
 
 @"viewSource",
 @"keyboard"

 */
    case bold, italic,  underline, strikethrough, toggleSubscript, toggleSuperscript,
         link,
         orderedList, unorderedList,
         justifyFull, justifyLeft, justifyCenter, justifyRight,
         fontName, fontSize,
         foregroundColor, backgroundColor,
         outdent, indent,
         undo, redo,
         removeFormat,
         showSource, dismissKeyboard

    static let actionGroup: [[Self]] = [
        [.bold, .italic, .underline, .strikethrough, .toggleSubscript, .toggleSuperscript,
        .link,
        .orderedList, .unorderedList,
        .justifyFull, .justifyLeft, .justifyCenter, .justifyRight,
        .fontName, .fontSize,
        .foregroundColor, .backgroundColor,
        .outdent, .indent,
        .undo, .redo,
        .removeFormat],
        [.showSource, .dismissKeyboard]
    ]

    var icon: UIImage? {

        let iconName = switch self {
            case .bold:
                "bold"
            case .italic:
                "italic"
            case .underline:
                "underline"
            case .strikethrough:
                "strikethrough"
            case .link:
                "link"
            case .toggleSubscript:
                "textformat.subscript"
            case .toggleSuperscript:
                "textformat.superscript"
            case .orderedList:
                "list.number"
            case .unorderedList:
                "list.star"
            case .justifyFull:
                "text.justify"
            case .justifyLeft:
                "text.justify.left"
            case .justifyCenter:
                "text.aligncenter"
            case .justifyRight:
                "text.justify.right"
            case .fontName:
                "textformat.alt"
            case .fontSize:
                "textformat.size"
            case .foregroundColor:
                "scribble.variable"
            case .backgroundColor:
                "paintbrush"
            case .outdent:
                "decrease.indent"
            case .indent:
                "increase.indent"
            case .undo:
                "arrow.uturn.backward"
            case .redo:
                "arrow.uturn.forward"
            case .removeFormat:
                "xmark.circle"

            case .showSource:
                "viewSource"
            case .dismissKeyboard:
                "keyboard"
        }

        switch self {
            case .showSource:
                return getImage(named: iconName)
            default:
                return UIImage(systemName: iconName)
        }
    }

    var accessibilityLabel: String {
        switch self {
            case .bold:
                return RichTextEditorString.toolbarBold.localized
            case .italic:
                return RichTextEditorString.toolbarItalic.localized
            case .underline:
                return RichTextEditorString.toolbarUnderline.localized
            case .strikethrough:
                return RichTextEditorString.toolbarStrikethrough.localized
            case .link:
                return RichTextEditorString.toolbarLink.localized
            case .toggleSubscript:
                return RichTextEditorString.toolbarSubscript.localized
            case .toggleSuperscript:
                return RichTextEditorString.toolbarSuperscript.localized
            case .orderedList:
                return RichTextEditorString.toolbarOrderedList.localized
            case .unorderedList:
                return RichTextEditorString.toolbarUnorderedList.localized
            case .justifyFull:
                return RichTextEditorString.toolbarJustifyFull.localized
            case .justifyLeft:
                return RichTextEditorString.toolbarJustifyLeft.localized
            case .justifyCenter:
                return RichTextEditorString.toolbarJustifyCenter.localized
            case .justifyRight:
                return RichTextEditorString.toolbarJustifyRight.localized
            case .fontName:
                return RichTextEditorString.toolbarFontName.localized
            case .fontSize:
                return RichTextEditorString.toolbarFontSize.localized
            case .foregroundColor:
                return RichTextEditorString.toolbarForegroundColor.localized
            case .backgroundColor:
                return RichTextEditorString.toolbarBackgroundColor.localized
            case .outdent:
                return RichTextEditorString.toolbarOutdent.localized
            case .indent:
                return RichTextEditorString.toolbarIndent.localized
            case .undo:
                return RichTextEditorString.toolbarUndo.localized
            case .redo:
                return RichTextEditorString.toolbarRedo.localized
            case .removeFormat:
                return RichTextEditorString.toolbarRemoveFormat.localized
            case .showSource:
                return RichTextEditorString.toolbarShowSource.localized
            case .dismissKeyboard:
                return RichTextEditorString.toolbarDismissKeyboard.localized
        }
    }

    private func getImage (named name : String) -> UIImage? {
        if let image = UIImage(named: name, in: .module, compatibleWith: nil) {
            return image.withRenderingMode(.alwaysTemplate)
        }
        return nil
    }
        
    func isSelected(_ textAttributes: UITextAttributes) -> Bool {

        switch self {
            case .bold:
                return textAttributes.hasBold
            case .italic:
                return textAttributes.hasItalic
            case .underline:
                return textAttributes.hasUnderline
            case .strikethrough:
                return textAttributes.hasStrikeThrough
            case .link:
                return textAttributes.hasLink
            case .toggleSubscript:
                return textAttributes.hasSubscript
            case .toggleSuperscript:
                return textAttributes.hasSuperscript
            case .orderedList:
                return textAttributes.hasOrderedList
            case .unorderedList:
                return textAttributes.hasUnorderedList
            case .justifyFull:
                return textAttributes.textJustification == .full
            case .justifyLeft:
                return textAttributes.textJustification == .left
            case .justifyCenter:
                return textAttributes.textJustification == .center
            case .justifyRight:
                return textAttributes.textJustification == .right
            case .showSource, .dismissKeyboard, .fontName, .fontSize, .foregroundColor, .backgroundColor, .outdent, .indent, .undo, .redo,
                 .removeFormat:
                return false
        }
    }
}
