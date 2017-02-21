//
//  EnumComponent.swift
//  Fonts
//
//  Created by J on 2/20/17.
//  Copyright © 2017 Chan Choon Hee. All rights reserved.
//

import Foundation

//class enumComponent {

enum components : String, CustomStringConvertible {
    case achievement = "achievement"
    case activityBarTime = "activityBarTime"
    case activityHours = "activityHours"
    case activityTime = "activityTime"
    case activityType = "activityType"
    case activityTypeAppr = "activityTypeAppr"
    case activityTypeApprIcon = "activityTypeApprIcon"
    case activityTypeField = "activityTypeField"
    case activityTypeFieldIcon = "activityTypeFieldIcon"
    case activityTypeFieldIconHm = "activityTypeFieldIconHm"
    case activityTypeNone = "activityTypeNone"
    case activityTypeNoneIcon = "activityTypeNoneIcon"
    case activityTypeOffice = "activityTypeOffice"
    case activityTypeOfficeIcon = "activityTypeOfficeIcon"
    case activityTypeOfficeIconHm = "activityTypeOfficeIconHm"
    case addAppr = "addAppr"
    case addApptBtn = "addApptBtn"
    case addContPhoto = "addContPhoto"
    case addCustomLabelBtn = "addCustomLabelBtn"
    case apprBtn = "apprBtn"
    case apprCont = "apprCont"
    case apprContHmNR = "apprContHmNR"
    case apprContHmR = "apprContHmR"
    case apprContAddToList = "apprContAddToList"
    case apprContNum = "apprContNum"
    case apprContNumNR = "apprContNumNR"
    case apprContNumR = "apprContNumR"
    case apprContSn = "apprContSn"
    case apprContSnHm = "apprContSnHm"
    case apprContSnHmNR = "apprContSnHmNR"
    case apprContSnHmR = "apprContSnHmR"
    case apprContStatus = "apprContStatus"
    case apprDate = "apprDate"
    case apprDetails = "apprDetails"
    case apprEditBtn = "apprEditBtn"
    case apprText = "apprText"
    case apprTitle = "apprTitle"
    case apptApprNotes = "apptApprNotes"
    case apptApprNotesDate = "apptApprNotesDate"
    case apptPrompt = "apptPrompt"
    case apptPromptDone = "apptPromptDone"
    case apptBtn = "apptBtn"
    case apptContSn = "apptContSn"
    case apptDetails = "apptDetails"
    case apptDetailsDone = "apptDetailsDone"
    case apptText = "apptText"
    case apptTitle = "apptTitle"
    case apptTitleDone = "apptTitleDone"
    case backBtn = "backBtn"
    case callstatusOption = "callstatusOption"
    case cancelBtn = "cancelBtn"
    case cdarDate = "cdarDate"
    case cdarDay = "cdarDay"
    case cdarTitle = "cdarTitle"
    case chartData = "chartData"
    case columnBtn = "columnBtn"
    case columnTop = "columnTop"
    case contBtn = "contBtn"
    case contListDetails = "contListDetails"
    case contName = "contName"
    case contSn = "contSn"
    case contTitle = "contTitle"
    case dailyRecPrivateNotes = "dailyRecPrivateNotes"
    case dailyRecPublicNotes = "dailyRecPublicNotes"
    case dailyRecRemarks = "dailyRecRemarks"
    case dailyRecSBA = "dailyRecSBA"
    case dailyRecSteps = "dailyRecSteps"
    case dailyRecStepsDesc = "dailyRecStepsDesc"
    case dayDateMonth = "dayDateMonth"
    case dismissBtn = "dismissBtn"
    case displayDate = "displayDate"
    case displayDay = "displayDay"
    case doneBtn = "doneBtn"
    case editBtn = "editBtn"
    case exportExcelBtn = "exportExcelBtn"
    case formDate = "formDate"
    case formDetails = "formDetails"
    case formFillDetails = "formFillDetails"
    case formFillPlaceholder = "formFillPlaceholder"
    case formNotesDate = "formNotesDate"
    case formSetDetailsBtn = "formSetDetailsBtn"
    case graphAxisX = "graphAxisX"
    case graphAxisY = "graphAxisY"
    case graphLegend = "graphLegend"
    case groupNameCBox = "groupNameCBox"
    case highlightMemberBtn = "highlightMemberBtn"
    case importBtn = "importBtn"
    case initialsBar = "initialsBar"
    case leftTitle = "leftTitle"
    case listDetails = "listDetails"
    case moduleTitle = "moduleTitle"
    case monthYearWeek = "monthYearWeek"
    case moreOptionsBtn = "moreOptionsBtn"
    case notesLoadMoreBtn = "notesLoadMoreBtn"
    case pendingAppr = "pendingAppr"
    case pendingApptPromptBtn = "pendingApptPromptBtn"
    case pendingApptPromptMsg = "pendingApptPromptMsg"
    case pendingTaskSubTitle = "pendingTaskSubTitle"
    case pendingTaskTitle = "pendingTaskTitle"
    case purposeBtn = "purposeBtn"
    case recBtn = "recBtn"
    case recText = "recText"
    case recTime = "recTime"
    case recTitle = "recTitle"
    case recTotalHours = "recTotalHours"
    case recTotalWork = "recTotalWork"
    case referral = "referral"
    case removeContBtn = "removeContBtn"
    case reportDate = "reportDate"
    case reportSubTabs = "reportSubTabs"
    case reportTabs = "reportTabs"
    case rescheduleApprBtn = "rescheduleApprBtn"
    case rescheduleConfirmationBtn = "rescheduleConfirmationBtn"
    case rightTitle = "rightTitle"
    case searchBar = "searchBar"
    case selectBtn = "selectBtn"
    case selectMobileBtn = "selectMobileBtn"
    case selectCountryCodeBtn = "selectCountryCodeBtn"
    case setPrimaryBtn = "setPrimaryBtn"
    case sortbyCBox = "sortbyCBox"
    case subTitle = "subTitle"
    case title = "title"
    case todayBtn = "todayBtn"
    case updateBtn = "updateBtn"
    case weeklyAchievement = "weeklyAchievement"
    case weeklyGoal = "weeklyGoal"
    
    var description: String {
        return self.rawValue
    }
}

//    func component (_ componentName: components ) -> String {
//        switch componentName {
//        case .achievement:
//            return "achievement"
//        case .activityBarTime:
//            return "activityBarTime"
//        case .activityHours:
//            return "activityHours"
//        case .activityTime:
//            return "activityTime"
//        case .activityType:
//            return "activityType"
//        case .activityTypeAppr:
//            return "activityTypeAppr"
//        case  .activityTypeApprIcon:
//            return "activityTypeApprIcon"
//        case .activityTypeField:
//            return "activityTypeField"
//        case .activityTypeFieldIcon:
//            return "activityTypeFieldIcon"
//        case .activityTypeFieldIconHm:
//            return "activityTypeFieldIconHm"
//        case .activityTypeNone:
//            return "activityTypeNone"
//        case .activityTypeNoneIcon:
//            return "activityTypeNoneIcon"
//        case .activityTypeOffice:
//            return "activityTypeOffice"
//        case .activityTypeOfficeIcon:
//            return "activityTypeOfficeIcon"
//        case .activityTypeOfficeIconHm:
//            return "activityTypeOfficeIconHm"
//        case .addAppr:
//            return "addAppr"
//        case .addApptBtn:
//            return "addApptBtn"
//        case .addContPhoto:
//            return "addContPhoto"
//        case .addCustomLabelBtn:
//            return "addCustomLabelBtn"
//        case .apprBtn:
//            return "apprBtn"
//        case .apprCont:
//            return "apprCont"
//        case .apprContHmNR:
//            return "apprContHmNR"
//        case .apprContHmR:
//            return "apprContHmR"
//        case .apprContAddToList:
//            return "apprContAddToList"
//        case .apprContNum:
//            return "apprContNum"
//        case .apprContNumNR:
//            return "apprContNumNR"
//        case .apprContNumR:
//            return "apprContNumR"
//        case .apprContSn:
//            return "apprContSn"
//        case .apprContSnHm:
//            return "apprContSnHm"
//        case  .apprContSnHmNR:
//            return "apprContSnHmNR"
//        case .apprContSnHmR:
//            return "apprContSnHmR"
//        case .apprContStatus:
//            return "apprContStatus"
//        case .apprDate:
//            return "apprDate"
//        case .apprDetails:
//            return "apprDetails"
//        case .apprEditBtn:
//            return "apprEditBtn"
//        case .apprText:
//            return "apprText"
//        case .apprTitle:
//            return "apprTitle"
//        case .apptApprNotes:
//            return "apptApprNotes"
//        case .apptApprNotesDate:
//            return "apptApprNotesDate"
//        case .apptPrompt:
//            return "apptPrompt"
//        case .apptPromptDone:
//            return "apptPromptDone"
//        case .apptBtn:
//            return "apptBtn"
//        case .apptContSn:
//            return "apptContSn"
//        case .apptDetails:
//            return "apptDetails"
//        case .apptDetailsDone:
//            return "apptDetailsDone"
//        case .apptText:
//            return "apptText"
//        case .apptTitle:
//            return "apptTitle"
//        case .apptTitleDone:
//            return "apptTitleDone"
//        case .backBtn:
//            return "backBtn"
//        case .callstatusOption:
//            return "callstatusOption"
//        case .cancelBtn:
//            return "cancelBtn"
//        case .cdarDate:
//            return "cdarDate"
//        case .cdarDay:
//            return "cdarDay"
//        case .cdarTitle:
//            return "cdarTitle"
//        case .chartData:
//            return "chartDate"
//        case .columnBtn:
//            return "columnBtn"
//        case .columnTop:
//            return "columnTop"
//        case .contBtn:
//            return "contBtn"
//        case .contListDetails:
//            return "contListDetails"
//        case .contName:
//            return "contName"
//        case .contSn:
//            return "contSn"
//        case .contTitle:
//            return "contTitle"
//        case .dailyRecPrivateNotes:
//            return "dailyRecPrivateNotes"
//        case .dailyRecPublicNotes:
//            return "dailyRecPublicNotes"
//        case .dailyRecRemarks:
//            return "dailyRecRemarks"
//        case .dailyRecSBA:
//            return "dailyRecSBA"
//        case .dailyRecSteps:
//            return "dailyRecSteps"
//        case .dailyRecStepsDesc:
//            return "dailyRecStepsDesc"
//        case .dayDateMonth:
//            return "dayDateMonth"
//        case .dismissBtn:
//            return "dismissBtn"
//        case .displayDate:
//            return "displayDate"
//        case .displayDay:
//            return "displayDay"
//        case .doneBtn:
//            return "doneBtn"
//        case .editBtn:
//            return "editBtn"
//        case .exportExcelBtn:
//            return "exportExcelBtn"
//        case .formDate:
//            return "formDate"
//        case .formDetails:
//            return "formDetails"
//        case .formFillDetails:
//            return "formFillDetails"
//        case .formFillPlaceholder:
//            return "formFillPlaceholder"
//        case .formNotesDate:
//            return "formNotesDate"
//        case .formSetDetailsBtn:
//            return "formSetDetailsBtn"
//        case .graphAxisX:
//            return "graphAxisX"
//        case .graphAxisY:
//            return "graphAxisY"
//        case .graphLegend:
//            return "graphLegend"
//        case .groupNameCBox:
//            return "groupNameCbox"
//        case .highlightMemberBtn:
//            return "highlightMemberBtn"
//        case .importBtn:
//            return "importBtn"
//        case .initialsBar:
//            return "initialBar"
//        case .leftTitle:
//            return "leftTitle"
//        case .listDetails:
//            return "listDetails"
//        case .moduleTitle:
//            return "moduleTitle"
//        case .monthYearWeek:
//            return "monthYearWeek"
//        case .moreOptionsBtn:
//            return "moreOptionsBtn"
//        case .notesLoadMoreBtn:
//            return "notesLoadMoreBtn"
//        case .pendingAppr:
//            return "pendingAppr"
//        case .pendingApptPromptBtn:
//            return "pendingApptPromptBtn"
//        case .pendingApptPromptMsg:
//            return "pendingApptPromptMsg"
//        case .pendingTaskSubTitle:
//            return "pendingTaskSubTitle"
//        case .pendingTaskTitle:
//            return "pendingTaskTitle"
//        case .purposeBtn:
//            return "purposeBtn"
//        case .recBtn:
//            return "recBtn"
//        case .recText:
//            return "recText"
//        case .recTime:
//            return "recTime"
//        case .recTitle:
//            return "recTitle"
//        case .recTotalHours:
//            return "recTotalHours"
//        case .recTotalWork:
//            return "recTotalWork"
//        case .referral:
//            return "referral"
//        case .removeContBtn:
//            return "removeContBtn"
//        case .reportDate:
//            return "reportDate"
//        case .reportSubTabs:
//            return "reportSubTabs"
//        case .reportTabs:
//            return "reportTabs"
//        case .rescheduleApprBtn:
//            return "rescheduleApprBtn"
//        case .rescheduleConfirmationBtn:
//            return "rescheduleConfirmationBtn"
//        case .rightTitle:
//            return "rightTitle"
//        case .searchBar:
//            return "searchBar"
//        case .selectBtn:
//            return "selectBtn"
//        case .selectMobileBtn:
//            return "selectMobileBtn"
//        case .selectCountryCodeBtn:
//            return "selectCountryCodeBtn"
//        case .setPrimaryBtn:
//            return "setPrimaryBtn"
//        case .sortbyCBox:
//            return "sortbyCBox"
//        case .subTitle:
//            return "subTitle"
//        case .title:
//            return "title"
//        case .todayBtn:
//            return "todayBtn"
//        case .updateBtn:
//            return "updateBtn"
//        case .weeklyAchievement:
//            return "weeklyAchievement"
//        case .weeklyGoal:
//            return "weeklyGoal"
//        }
//    }
//}
