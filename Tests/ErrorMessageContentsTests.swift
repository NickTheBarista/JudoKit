//
//  ErrorMessageContentsTests.swift
//  JudoKitObjC
//
//  Created by Ashley Barrett on 08/04/2016.
//  Copyright © 2016 Judo Payments. All rights reserved.
//

import XCTest

@testable import Judo

class ErrorMessageContentsTests: JudoTestCase {
    
    let UnableToProcessRequestErrorDesc = "Sorry, we're currently unable to process this request."
    let UnableToVaildteErrorDesc = "Sorry, we've been unable to validate your card. Please check your details and try again or use an alternative card."
    let UnableToAcceptErrorDesc = "Sorry, but we are currently unable to accept payments to this account. Please contact customer services."
    
    let UnableToProcessRequestErrorTitle = "Unable to process"
    let UnableToValidateErrorTitle = "Unable to validate"
    let UnableToAcceptErrorTitle = "Unable to accept"
    
    let ParameterError = "A parameter entered into the dictionary (request body to Judo API) is faulty"
    let ResponseParseError = "An error with the response from the backend API"
    let LuhnValidationError = "Luhn validation checks failed"
    let JudoIDInvalidError = "Luhn validation on JudoID failed"
    let SerializationError = "The information returned by the backend API does not return proper JSON data"
    let RequestError = "The request failed when trying to communicate to the API"
    let TokenSecretError = "Token and secret information is not provided"
    let CardAndTokenError = "Both a card and a token were provided in the transaction request"
    let AmountMissingError = "An amount object was not provided in the transaction request"
    let CardOrTokenMissingError = "The card object and the token object were not provided in the transaction request"
    let PKPaymentMissingError = "The pkPayment object was not provided in the ApplePay transaction"
    let JailbrokenDeviceDisallowedError = "The device the code is currently running is jailbroken. Jailbroken devices are not allowed when instantiating a new Judo session"
    let InvalidOperationError = "It is not possible to create a transaction object with anything else than Payment, PreAuth or RegisterCard"
    let Failed3DSError = "After receiving the 3DS payload, when the payload has faulty data, the WebView fails to load the 3DS Page or the resolution page"
    let UnknownError = "An unknown error that can occur when making API calls"
    let UserDidCancel = "Received when user cancels the payment journey"
    
    private func testError(errorCode : JudoErrorCode, expectedTitle: String?, expectedDesc: String?, expectedDevHint: String?) {
        let actual = JudoError(errorCode)

        XCTAssertEqual(actual.title,expectedTitle)
        XCTAssertEqual(actual.message, expectedDesc)
        XCTAssertEqual(actual.resolution, expectedDevHint)
    }
    
    func testParameterError() {
        testError(.ParameterError, expectedTitle: self.UnableToProcessRequestErrorTitle, expectedDesc: self.UnableToProcessRequestErrorDesc, expectedDevHint: self.ParameterError)
    }

    func testResponseParseError() {
        testError(.ResponseParseError, expectedTitle: self.UnableToProcessRequestErrorTitle, expectedDesc: self.UnableToProcessRequestErrorDesc, expectedDevHint: self.ResponseParseError)
    }
    
    func testLuhnValidationError() {
        testError(.LuhnValidationError, expectedTitle: self.UnableToValidateErrorTitle, expectedDesc: self.UnableToVaildteErrorDesc, expectedDevHint: self.LuhnValidationError)
    }
    
    func testJudoIDInvalidError() {
        testError(.JudoIDInvalidError, expectedTitle: self.UnableToAcceptErrorTitle, expectedDesc: self.UnableToAcceptErrorDesc, expectedDevHint: self.JudoIDInvalidError)
    }
    
    func testSerializationError() {
        testError(.SerializationError, expectedTitle: self.UnableToProcessRequestErrorTitle, expectedDesc: self.UnableToProcessRequestErrorDesc, expectedDevHint: self.SerializationError)
    }
    
    func testRequestError() {
        testError(.RequestError, expectedTitle: self.UnableToProcessRequestErrorTitle, expectedDesc: self.UnableToProcessRequestErrorDesc, expectedDevHint: self.RequestError)
    }
    
    func testTokenSecretError() {
        testError(.TokenSecretError, expectedTitle: self.UnableToProcessRequestErrorTitle, expectedDesc: self.UnableToProcessRequestErrorDesc, expectedDevHint: self.TokenSecretError)
    }
    
    func testCardAndTokenError() {
        testError(.CardAndTokenError, expectedTitle: self.UnableToProcessRequestErrorTitle, expectedDesc: self.UnableToProcessRequestErrorDesc, expectedDevHint: self.CardAndTokenError)
    }
    
    func testAmountMissingError() {
        testError(.AmountMissingError, expectedTitle: self.UnableToProcessRequestErrorTitle, expectedDesc: self.UnableToProcessRequestErrorDesc, expectedDevHint: self.AmountMissingError)
    }
    
    func testCardOrTokenMissingError() {
        testError(.CardOrTokenMissingError, expectedTitle: self.UnableToProcessRequestErrorTitle, expectedDesc: self.UnableToProcessRequestErrorDesc, expectedDevHint: self.CardOrTokenMissingError)
    }
    
    func testPKPaymentMissingError() {
        testError(.PKPaymentMissingError, expectedTitle: self.UnableToProcessRequestErrorTitle, expectedDesc: self.UnableToProcessRequestErrorDesc, expectedDevHint: self.PKPaymentMissingError)
    }
    
    func testJailbrokenDeviceDisallowedError() {
        testError(.JailbrokenDeviceDisallowedError, expectedTitle: self.UnableToProcessRequestErrorTitle, expectedDesc: self.UnableToProcessRequestErrorDesc, expectedDevHint: self.JailbrokenDeviceDisallowedError)
    }
    
    func testInvalidOperationError() {
        testError(.InvalidOperationError, expectedTitle: self.UnableToProcessRequestErrorTitle, expectedDesc: self.UnableToProcessRequestErrorDesc, expectedDevHint: self.InvalidOperationError)
    }
    
    func testFailed3DSError() {
        testError(.Failed3DSError, expectedTitle: self.UnableToProcessRequestErrorTitle, expectedDesc: self.UnableToProcessRequestErrorDesc, expectedDevHint: self.Failed3DSError)
    }
    
    func testUnknownError() {
        testError(.UnknownError, expectedTitle: self.UnableToProcessRequestErrorTitle, expectedDesc: self.UnableToProcessRequestErrorDesc, expectedDevHint: self.UnknownError)
    }
    
    func testUserDidCancel() {
        testError(.UserDidCancel, expectedTitle: nil, expectedDesc: nil, expectedDevHint: self.UserDidCancel)
    }
}