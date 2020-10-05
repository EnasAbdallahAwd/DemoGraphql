// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class CustomerForgetPasswordMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation CustomerForgetPassword($email: String!) {
      customer_forgot_password(email: $email)
    }
    """

  public let operationName: String = "CustomerForgetPassword"

  public var email: String

  public init(email: String) {
    self.email = email
  }

  public var variables: GraphQLMap? {
    return ["email": email]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("customer_forgot_password", arguments: ["email": GraphQLVariable("email")], type: .scalar(Bool.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(customerForgotPassword: Bool? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "customer_forgot_password": customerForgotPassword])
    }

    /// fotgot password mutation
    public var customerForgotPassword: Bool? {
      get {
        return resultMap["customer_forgot_password"] as? Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "customer_forgot_password")
      }
    }
  }
}
