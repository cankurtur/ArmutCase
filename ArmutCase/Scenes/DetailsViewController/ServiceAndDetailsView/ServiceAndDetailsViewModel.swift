//
//  ServiceAndDetailsViewModel.swift
//  ArmutCase
//
//  Created by Can Kurtur on 6.12.2021.
//

import Foundation

struct ServiceAndDetailsViewModel {
    let imageViewModel: CustomImageViewModel
    let titleText: String
    let contents: [IconAndTitleViewModel]
    
    var detailsUIModel: DetailsUIModel

    init(detailsUIModel: DetailsUIModel) {
        self.detailsUIModel = detailsUIModel
        self.imageViewModel = CustomImageViewModel(imageLink: detailsUIModel.imageURL)
        self.titleText = detailsUIModel.name

        let iconAndTitleDataArray: [IconAndTitleViewModel] = [
            IconAndTitleViewModel(icon: .professionalNumberOrangeIcon, title: "\(detailsUIModel.proCount) pros near you"),
            IconAndTitleViewModel(icon: .starAverageIcon, title: "\(detailsUIModel.averageRating) avarage rating"),
            IconAndTitleViewModel(icon: .jobDoneOrangeIcon, title: "Last month \(detailsUIModel.completedJobsOnLastMonth) cleaning job completed"),
            IconAndTitleViewModel(icon: .useFreeOrangeIcon, title: "Free of charge"),
            IconAndTitleViewModel(icon: .serviceGuaranteeOrangeIcon, title: "Service Guaranteed")
        ]
        self.contents = iconAndTitleDataArray
    }

}
