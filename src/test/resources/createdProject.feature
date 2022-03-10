Feature: Project

  Scenario: create project
    Given yo uso la authenticacion por token
    When envio POST request a la /api/projects.json con el body
      """
      {
        "Content":"Cucumber",
        "Icon":"4"
      }
      """
    Then el codigo de respuesta deberia ser 200
    And el expected body deberia ser
    """
    {
        "Id": "IGNORE",
        "Content": "Cucumber",
        "ItemsCount": 0,
        "Icon":4,
        "ItemType": 2,
        "ParentId": null,
        "Collapsed": false,
        "ItemOrder": "IGNORE",
        "Children": [
        ],
        "IsProjectShared": false,
        "ProjectShareOwnerName": null,
        "ProjectShareOwnerEmail": null,
        "IsShareApproved": false,
        "IsOwnProject": true,
        "LastSyncedDateTime": "IGNORE",
        "LastUpdatedDate": "IGNORE",
        "Deleted": false,
        "SyncClientCreationId": null
    }
    """
    And guardo el Id de la respuesta en ID_PROJ

  Scenario: crud Item
    Given yo uso la authenticacion por token
    When envio POST request a la /api/items.json con el body
    """
    {
      "Content":"NewItem",
    }
    """
    Then el codigo de respuesta deberia ser 200
    And el expected body deberia ser
    """
    {
    "Id": "IGNORE",
    "Content": "NewItem",
    "ItemType": 1,
    "Checked": false,
    "ProjectId": "IGNORE",
    "ParentId": null,
    "Path": "",
    "Collapsed": false,
    "DateString": null,
    "DateStringPriority": 0,
    "DueDate": "",
    "Recurrence": null,
    "ItemOrder": "IGNORE",
    "Priority": 4,
    "LastSyncedDateTime": "IGNORE",
    "Children": [],
    "DueDateTime": null,
    "CreatedDate": "IGNORE",
    "LastCheckedDate": null,
    "LastUpdatedDate": "IGNORE",
    "Deleted": false,
    "Notes": "",
    "InHistory": false,
    "SyncClientCreationId": null,
    "DueTimeSpecified": true,
    "OwnerId": 701924
}
    """
    And guardo el Id de la respuesta en ID_Item

    When envio GET request a la /api/items/ID_Item.json con el body
    """
    """
    Then el codigo de respuesta deberia ser 200
    And el atributo Content deberia ser NewItem

    When envio PUT request a la /api/items/ID_Item.json con el body
    """
    {
      "Content":"NewItem2"
    }
    """
    Then el codigo de respuesta deberia ser 200
    And el atributo Content deberia ser NewItem2

    When envio DELETE request a la /api/items/ID_Item.json con el body
    """
    """
    Then el codigo de respuesta deberia ser 200
    And el atributo Content deberia ser NewItem2
  Scenario:
    Given yo uso la authenticacion por token
    When envio DELETE request a la /api/authentication/token.json con el body
    """
    {
    "TokenString":"IGNORE",
    "UserEmail":"deni@email.com",
    "ExpirationTime":"IGNORE"
    }
    """
