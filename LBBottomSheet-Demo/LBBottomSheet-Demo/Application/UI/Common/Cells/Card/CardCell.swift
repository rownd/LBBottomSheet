//  Copyright © 2021 Lunabee Studio
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//
//  CardCell.swift
//  LBBottomSheet-Demo
//
//  Created by Lunabee Studio / Date - 22/10/2021 - for the LBBottomSheet-Demo Swift Package.
//

import UIKit

class CardCell: CVTableViewCell {
    @IBOutlet var containerView: UIView!
    @IBOutlet var containerBackgroundView: UIView!
    @IBOutlet var fakeSubtitleLabel: UILabel?
    @IBOutlet var subtitleView: UIView?
    
    override func setup(with row: CVRow) {
        super.setup(with: row)
        containerBackgroundView.backgroundColor = backgroundColor
        containerBackgroundView.layer.cornerRadius = 10.0
        containerBackgroundView.layer.masksToBounds = true
        containerBackgroundView.layer.maskedCorners = row.theme.maskedCorners
        containerView.layer.cornerRadius = 10.0
        containerView.layer.masksToBounds = true
        containerView.layer.maskedCorners = row.theme.maskedCorners
        fakeSubtitleLabel?.text = cvSubtitleLabel?.text
        fakeSubtitleLabel?.font = cvSubtitleLabel?.font
        subtitleView?.isHidden = row.subtitle == nil
        backgroundColor = .clear
        selectionStyle = .none
        accessoryType = .none
    }

    override func setHighlighted(_ highlighted: Bool, animated: Bool) {
        guard currentAssociatedRow?.selectionAction != nil else { return }
        super.setHighlighted(highlighted, animated: animated)
        if highlighted {
            containerBackgroundView.layer.removeAllAnimations()
            containerBackgroundView.alpha = 0.6
        } else {
            UIView.animate(withDuration: 0.3) {
                self.containerBackgroundView.alpha = 1.0
            }
        }
    }
}
