//
//  File.swift
//  RichTextEditor
//
//  Created by Antonio Montes on 12/5/24.
//

import Foundation

extension String {

    public func deleteHTMLTags() -> String {
        let withoutStyle = replacingOccurrences(of: "<style[\\s\\S]*?</style>", with: "", options: [.regularExpression, .caseInsensitive])
        let withoutScript = withoutStyle.replacingOccurrences(of: "<script[\\s\\S]*?</script>", with: "", options: [.regularExpression, .caseInsensitive])
        return withoutScript.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression)
    }
}
