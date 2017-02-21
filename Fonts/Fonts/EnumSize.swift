//
//  EnumWidthHeight.swift
//  Fonts
//
//  Created by J on 2/20/17.
//  Copyright © 2017 Chan Choon Hee. All rights reserved.
//

import Foundation
//
//class enumSize {

    enum sizes: String, CustomStringConvertible{
        case activityBox = "activityBox"
        case activityNotesBox = "activityNotesBox"
        case activityTypeIcon = "activityTypeIcon"
        case apprBox = "apprBox"
        case apptAddBar = "apptAddBar"
        case apptBox = "apptBox"
        case apptCont = "apptCont"
        case apptMgV = "apptMgV"
        case apptPromptBtn = "apptPromptBtn"
        case apptReferral = "apptReferral"
        case cdarBox = "cdarBox"
        case componentAppt = "componentAppt"
        case componentBtn = "componentBtn"
        case componentCont = "componentCont"
        case componentMenuBar = "componentMenuBar"
        case componentMgV = "componentMgV"
        case contBtn = "contBtn"
        case contDetailsHm = "contDetailsHm"
        case contNameHm = "contNameHm"
        case contStatus = "contStatus"
        case contTitleHm = "contTitleHm"
        case dailySumBtn = "dailySumBtn"
        case dateGap = "dateGap"
        case exportExcelBtn = "exportExcelBtn"
        case formApprDetails = "formApprDetails"
        case formApprList = "formApprList"
        case formApprListCont = "formApprListCont"
        case formApprListDate = "formApprListDate"
        case formDetails = "formDetails"
        case formMgV = "formMgV"
        case formNewApptNotes = "formNewApptNotes"
        case groupNameCBox = "groupNameCBox"
        case highlightMemberBtn = "highlightMemberBtn"
        case lastAppt = "lastAppt"
        case lastCont = "lastCont"
        case listCont = "listCont"
        case listContHm = "listContHm"
        case listConInitials = "listConInitials"
        case listDetails = "listDetails"
        case mgAppt = "mgAppt"
        case mgBtn = "mgBtn"
        case mgH = "mgH"
        case mgV = "mgV"
        case nextAppt = "nextAppt"
        case recBox = "recBox"
        case recMgTimeBox = "recMgTimeBox"
        case recMgV = "recMgV"
        case reportBtnBar = "reportBtnBar"
        case reportComponentBtn = "reportComponentBtn"
        case reportMgV = "reportMgV"
        case reportSubTabsBar = "reportSubTabsBar"
        case reportTabsBar = "reportTabsBar"
        case searchBar = "searchBar"
        case smallIcon = "smallIcon"
        case sortbyBtn = "sortbyBtn"
        case subTitleBar = "subTitleBar"
        case subTitleBtmGap = "subTitleBtmGap"
        case subTitleMgSide = "subTitleMgSide"
        case tableFirstRow = "tableFirstRow"
        case tableLeftColumn = "tableLeftColumn"
        case tableRow = "tableRow"
        case tableSecondRow = "tableSecondRow"
        case tableTopRow = "tableTopRow"
        case timeBox = "timeBox"
        case title = "title"
        case todayBtn = "todayBtn"
        
        var description: String {
            return self.rawValue
        }
    }


//    func size (_ sizeName: sizes) -> String {
//        switch sizeName {
//        case .activityBox:
//            return "activityBox"
//        case .activityNotesBox:
//            return "activityNotesBox"
//        case .activityTypeIcon:
//            return "activityTypeIcon"
//        case .apprBox:
//            return "apprBox"
//        case .apptAddBar:
//            return "apptAddBar"
//        case .apptBox:
//            return "apptBox"
//        case .apptCont:
//            return "apptCont"
//        case .apptMgV:
//            return "apptMgV"
//        case .apptPromptBtn:
//            return "apptPromptBtn"
//        case .apptReferral:
//            return "apptReferral"
//        case .cdarBox:
//            return "cdarBox"
//        case .componentAppt:
//            return "componentAppt"
//        case .componentBtn:
//            return "componentBtn"
//        case .componentCont:
//            return "componentCont"
//        case .componentMenuBar:
//            return "componentMenuBar"
//        case .componentMgV:
//            return "componentMgV"
//        case .contBtn:
//            return "contBtn"
//        case .contDetailsHm:
//            return "contDetailsHm"
//        case .contNameHm:
//            return "contNameHm"
//        case .contStatus:
//            return "contStatus"
//        case .contTitleHm:
//            return "contTitleHm"
//        case .dailySumBtn:
//            return "dailySumBtn"
//        case .dateGap:
//            return "dateGap"
//        case .exportExcelBtn:
//            return "exportExcelBtn"
//        case .formApprDetails:
//            return "formApprDetails"
//        case .formApprList:
//            return "formApprList"
//        case .formApprListCont:
//            return "formApprListCont"
//        case .formApprListDate:
//            return "formApprListDate"
//        case .formDetails:
//            return "formDetails"
//        case .formMgV:
//            return "formMgV"
//        case .formNewApptNotes:
//            return "formNewApptNotes"
//        case .groupNameCBox:
//            return "groupNameCBox"
//        case .highlightMemberBtn:
//            return "highlightMemberBtn"
//        case .lastAppt:
//            return "lastAppt"
//        case .lastCont:
//            return "lastCont"
//        case .listCont:
//            return "listCont"
//        case .listContHm:
//            return "listContHm"
//        case .listConInitials:
//            return "listContInitials"
//        case .listDetails:
//            return "listDetails"
//        case .mgAppt:
//            return "mgAppt"
//        case .mgBtn:
//            return "mgBtn"
//        case .mgH:
//            return "mgH"
//        case .mgV:
//            return "mgV"
//        case .nextAppt:
//            return "nextAppt"
//        case .recBox:
//            return "recBox"
//        case .recMgTimeBox:
//            return "recMgTimeBox"
//        case . recMgV:
//            return "recMgV"
//        case .reportBtnBar:
//            return "reportBtnBar"
//        case .reportComponentBtn:
//            return "reportComponentBtn"
//        case .reportMgV:
//            return "reportMgV"
//        case .reportSubTabsBar:
//            return "reportSubTabsBar"
//        case .reportTabsBar:
//            return "reportTabsBar"
//        case .searchBar:
//            return "searchBar"
//        case .smallIcon:
//            return "smallIcon"
//        case .sortbyBtn:
//            return "sortbyBtn"
//        case .subTitleBar:
//            return "subTitleBar"
//        case .subTitleBtmGap:
//            return "subTitleBtmGap"
//        case .subTitleMgSide:
//            return "subTitleMgSide"
//        case .tableFirstRow:
//            return "tableFirstRow"
//        case .tableLeftColumn:
//            return "tableLeftColumn"
//        case .tableRow:
//            return "tableRow"
//        case .tableSecondRow:
//            return "tableSecondRow"
//        case .tableTopRow:
//            return "tableTopRow"
//        case .timeBox:
//            return "timeBox"
//        case .title:
//            return "title"
//        case .todayBtn:
//            return "todayBtn"
//        }
//    }
//}
