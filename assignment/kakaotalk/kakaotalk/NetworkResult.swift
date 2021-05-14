//
//  NetworkResult.swift
//  kakaotalk
//
//  Created by JEN Lee on 2021/05/14.
//

import Foundation

enum NetworkResult<T> {
    case sucess(T)
    case requestErr(T)
    case pathErr
    case serverErr
    case networkFail
}
