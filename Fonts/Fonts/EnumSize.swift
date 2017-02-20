//
//  EnumWidthHeight.swift
//  Fonts
//
//  Created by J on 2/20/17.
//  Copyright © 2017 Chan Choon Hee. All rights reserved.
//

import Foundation

class enumSize {
    
    enum sizes {
        case activityBox
        case activityNotesBox
        case activityTypeIcon
        case apprBox
        case apptAddBar
        case apptBox
        case apptCont
        case apptMgV
        case apptPromptBtn
        case apptReferral
        case cdarBox
        case componentAppt
        case componentBtn
        case componentCont
        case componentMenuBar
        case componentMgV
        case contBtn
        case contDetailsHm
        case contNameHm
        case contStatus
        case contTitleHm
        case dailySumBtn
        case dateGap
        case exportExcelBtn
        case formApprDetails
        case formApprList
        case formApprListCont
        case formApprListDate
        case formDetails
        case formMgV
        case formNewApptNotes
        case groupNameCBox
        case highlightMemberBtn
        case lastAppt
        case lastCont
        case listCont
        case listContHm
        case listConInitials
        case listDetails
        case mgAppt
        case mgBtn
        case mgH
        case mgV
        case nextAppt
        case recBox
        case recMgTimeBox
        case recMgV
        case reportBtnBar
        case reportComponentBtn
        case reportMgV
        case reportSubTabsBar
        case reportTabsBar
        case searchBar
        case smallIcon
        case sortbyBtn
        case subTitleBar
        case subTitleBtmGap
        case subTitleMgSide
        case tableFirstRow
        case tableLeftColumn
        case tableRow
        case tableSecondRow
        case tableTopRow
        case timeBox
        case title
        case todayBtn
    }
    
    func size (_ sizeName: sizes) -> String {
        switch sizeName {
        case .activityBox:
            return "activityBox"
        case .activityNotesBox:
            return "activityNotesBox"
        case .activityTypeIcon:
            return "activityTypeIcon"
        case .apprBox:
            return "apprBox"
        case .apptAddBar:
            return "apptAddBar"
        case .apptBox:
            return "apptBox"
        case .apptCont:
            return "apptCont"
        case .apptMgV:
            return "apptMgV"
        case .apptPromptBtn:
            return "apptPromptBtn"
        case .apptReferral:
            return "apptReferral"
        case .cdarBox:
            return "cdarBox"
        case .componentAppt:
            return "componentAppt"
        case .componentBtn:
            return "componentBtn"
        case .componentCont:
            return "componentCont"
        case .componentMenuBar:
            return "componentMenuBar"
        case .componentMgV:
            return "componentMgV"
        case .contBtn:
            return "contBtn"
        case .contDetailsHm:
            return "contDetailsHm"
        case .contNameHm:
            return "contNameHm"
        case .contStatus:
            return "contStatus"
        case .contTitleHm:
            return "contTitleHm"
        case .dailySumBtn:
            return "dailySumBtn"
        case .dateGap:
            return "dateGap"
        case .exportExcelBtn:
            return "exportExcelBtn"
        case .formApprDetails:
            return "formApprDetails"
        case .formApprList:
            return "formApprList"
        case .formApprListCont:
            return "formApprListCont"
        case .formApprListDate:
            return "formApprListDate"
        case .formDetails:
            return "formDetails"
        case .formMgV:
            return "formMgV"
        case .formNewApptNotes:
            return "formNewApptNotes"
        case .groupNameCBox:
            return "groupNameCBox"
        case .highlightMemberBtn:
            return "highlightMemberBtn"
        case .lastAppt:
            return "lastAppt"
        case .lastCont:
            return "lastCont"
        case .listCont:
            return "listCont"
        case .listContHm:
            return "listContHm"
        case .listConInitials:
            return "listContInitials"
        case .listDetails:
            return "listDetails"
        case .mgAppt:
            return "mgAppt"
        case .mgBtn:
            return "mgBtn"
        case .mgH:
            return "mgH"
        case .mgV:
            return "mgV"
        case .nextAppt:
            return "nextAppt"
        case .recBox:
            return "recBox"
        case .recMgTimeBox:
            return "recMgTimeBox"
        case . recMgV:
            return "recMgV"
        case .reportBtnBar:
            return "reportBtnBar"
        case .reportComponentBtn:
            return "reportComponentBtn"
        case .reportMgV:
            return "reportMgV"
        case .reportSubTabsBar:
            return "reportSubTabsBar"
        case .reportTabsBar:
            return "reportTabsBar"
        case .searchBar:
            return "searchBar"
        case .smallIcon:
            return "smallIcon"
        case .sortbyBtn:
            return "sortbyBtn"
        case .subTitleBar:
            return "subTitleBar"
        case .subTitleBtmGap:
            return "subTitleBtmGap"
        case .subTitleMgSide:
            return "subTitleMgSide"
        case .tableFirstRow:
            return "tableFirstRow"
        case .tableLeftColumn:
            return "tableLeftColumn"
        case .tableRow:
            return "tableRow"
        case .tableSecondRow:
            return "tableSecondRow"
        case .tableTopRow:
            return "tableTopRow"
        case .timeBox:
            return "timeBox"
        case .title:
            return "title"
        case .todayBtn:
            return "todayBtn"
        }
    }
}
