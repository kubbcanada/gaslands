<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gameSystem id="55c7-45e5-b4ec-d17c" name="Gaslands" revision="18" battleScribeVersion="2.03" xmlns="http://www.battlescribe.net/schema/gameSystemSchema">
  <publications>
    <publication id="55c7-45e5-pubEL3DK" name="Refuelled"/>
  </publications>
  <costTypes>
    <costType id="91a9-beed-6d55-d7ea" name="Cans" defaultCostLimit="-1.0" hidden="false"/>
    <costType id="ba54-acdf-648d-86c5" name="Build Points" defaultCostLimit="-1.0" hidden="false"/>
  </costTypes>
  <profileTypes>
    <profileType id="e5e1-86e0-5830-ebf3" name="Vehicle">
      <characteristicTypes>
        <characteristicType id="4efa-dfe3-7fb1-23fa" name="Weight"/>
        <characteristicType id="a05d-324a-bd1a-767e" name="Hull Points"/>
        <characteristicType id="6748-870d-e310-84fa" name="Handling"/>
        <characteristicType id="3c64-20de-b449-9e2a" name="Max Gear"/>
        <characteristicType id="4fe3-cc78-baa4-a7ad" name="Crew"/>
      </characteristicTypes>
    </profileType>
    <profileType id="3418-d4a3-250b-ab45" name="Weapon">
      <characteristicTypes>
        <characteristicType id="69fc-8560-0644-48e2" name="Type"/>
        <characteristicType id="c3db-f302-e618-7458" name="Attack"/>
        <characteristicType id="7de6-2500-ebda-e68b" name="Range"/>
        <characteristicType id="a354-1bd0-7431-ae3d" name="Special Rules"/>
        <characteristicType id="5779-672e-d159-0983" name="Ammo"/>
      </characteristicTypes>
    </profileType>
    <profileType id="deb3-2bac-5018-200f" name="Upgrade">
      <characteristicTypes>
        <characteristicType id="2a59-5864-b3f9-0c30" name="Build Slots"/>
        <characteristicType id="5304-47e4-12bd-5efe" name="Special Rules"/>
      </characteristicTypes>
    </profileType>
  </profileTypes>
  <categoryEntries>
    <categoryEntry id="fcb8-8c55-ab34-03d1" name="Vehicle" hidden="false"/>
    <categoryEntry id="6b0c-dbca-afd2-7a45" name="Sponsor" hidden="false"/>
    <categoryEntry id="d4f7-0b52-6568-ee8f" name="Lightweight" hidden="false"/>
    <categoryEntry id="96a0-cfb4-47ee-0a2f" name="Middleweight" hidden="false"/>
    <categoryEntry id="3e72-1039-e998-bd5a" name="Heavyweight" hidden="false"/>
    <categoryEntry id="39da-2a47-c4bf-ba33" name="Flying" hidden="false"/>
  </categoryEntries>
  <forceEntries>
    <forceEntry id="60bf-0f00-db63-fb4e" name="Team" hidden="false">
      <categoryLinks>
        <categoryLink id="a18d-f9e9-cd4b-b4b5" name="Vehicle" hidden="false" targetId="fcb8-8c55-ab34-03d1" primary="false"/>
        <categoryLink id="40d8-8d57-aedc-145e" name="Sponsor" hidden="false" targetId="6b0c-dbca-afd2-7a45" primary="false"/>
      </categoryLinks>
    </forceEntry>
  </forceEntries>
  <entryLinks>
    <entryLink id="7209-f619-ccee-874e" name="Sponsor" hidden="false" collective="false" import="true" targetId="9318-eb03-9bdd-ec00" type="selectionEntry"/>
  </entryLinks>
  <sharedSelectionEntries>
    <selectionEntry id="b5d8-cf00-181a-b503" name="Bike" hidden="false" collective="false" import="true" type="model">
      <modifiers>
        <modifier type="set" field="hidden" value="true">
          <conditionGroups>
            <conditionGroup type="or">
              <conditions>
                <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="6544-f65b-4420-3486" type="equalTo"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
      </modifiers>
      <profiles>
        <profile id="6887-f40b-71f1-ac4c" name="Bike" publicationId="55c7-45e5-pubEL3DK" page="68" hidden="false" typeId="e5e1-86e0-5830-ebf3" typeName="Vehicle">
          <modifiers>
            <modifier type="increment" field="a05d-324a-bd1a-767e" value="2">
              <repeats>
                <repeat field="selections" scope="b5d8-cf00-181a-b503" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="89d7-ec4b-86b1-20fc" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
            <modifier type="increment" field="4fe3-cc78-baa4-a7ad" value="1">
              <repeats>
                <repeat field="selections" scope="b5d8-cf00-181a-b503" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="528f-f0b3-bb2b-8a6a" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
            <modifier type="increment" field="a05d-324a-bd1a-767e" value="2">
              <repeats>
                <repeat field="selections" scope="b5d8-cf00-181a-b503" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="119d-9a90-a1f5-6fe1" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
          </modifiers>
          <modifierGroups>
            <modifierGroup>
              <repeats>
                <repeat field="selections" scope="b5d8-cf00-181a-b503" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="31f8-993a-622a-e07c" repeats="1" roundUp="false"/>
              </repeats>
              <modifiers>
                <modifier type="increment" field="6748-870d-e310-84fa" value="1"/>
                <modifier type="decrement" field="3c64-20de-b449-9e2a" value="1"/>
              </modifiers>
            </modifierGroup>
          </modifierGroups>
          <characteristics>
            <characteristic name="Weight" typeId="4efa-dfe3-7fb1-23fa">Lightweight</characteristic>
            <characteristic name="Hull Points" typeId="a05d-324a-bd1a-767e">4</characteristic>
            <characteristic name="Handling" typeId="6748-870d-e310-84fa">5</characteristic>
            <characteristic name="Max Gear" typeId="3c64-20de-b449-9e2a">6</characteristic>
            <characteristic name="Crew" typeId="4fe3-cc78-baa4-a7ad">1</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <rules>
        <rule id="9603-cab6-d464-f418" name="Full Throttle" publicationId="55c7-45e5-pubEL3DK" page="69" hidden="false">
          <description>This vehicle considers the Long Straight movement template to be permitted in any Gear. The Long Straight is not considered either Hazardous or Trivial in any Gear.</description>
        </rule>
        <rule id="c09e-4c56-a891-69d8" name="Pivot" publicationId="55c7-45e5-pubEL3DK" page="69" hidden="false">
          <description>At the start of this vehicle&apos;s activation, if this vehicle&apos;s current Gear is 1, this vehicle may make a pivot about its centre to face any direction. This pivot cannot cause a Collision and cannot leave this vehicle touching an obstruction.</description>
        </rule>
      </rules>
      <categoryLinks>
        <categoryLink id="1fb1-19a1-7851-520a" name="New CategoryLink" hidden="false" targetId="fcb8-8c55-ab34-03d1" primary="true"/>
        <categoryLink id="7ec7-0443-2799-63ed" name="Lightweight" hidden="false" targetId="d4f7-0b52-6568-ee8f" primary="false"/>
      </categoryLinks>
      <entryLinks>
        <entryLink id="7140-af92-4f58-2089" name="Options" hidden="false" collective="false" import="true" targetId="5707-6abb-7abe-9612" type="selectionEntryGroup">
          <modifiers>
            <modifier type="set" field="0a0d-4ca7-dc7b-eb21" value="1"/>
          </modifiers>
        </entryLink>
        <entryLink id="4170-411d-18c1-8e02" name="Driver Perks" hidden="false" collective="false" import="true" targetId="efd0-4e11-81a4-f448" type="selectionEntryGroup"/>
      </entryLinks>
      <costs>
        <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="5.0"/>
        <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="94de-e05a-c0db-5fb6" name="War Rig" hidden="false" collective="false" import="true" type="model">
      <modifiers>
        <modifier type="set" field="hidden" value="true">
          <conditionGroups>
            <conditionGroup type="or">
              <conditions>
                <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="f324-d908-797f-872a" type="equalTo"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
      </modifiers>
      <profiles>
        <profile id="d7af-bca4-d583-0431" name="War Rig" hidden="false" typeId="e5e1-86e0-5830-ebf3" typeName="Vehicle">
          <modifiers>
            <modifier type="increment" field="a05d-324a-bd1a-767e" value="2">
              <repeats>
                <repeat field="selections" scope="94de-e05a-c0db-5fb6" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="89d7-ec4b-86b1-20fc" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
            <modifier type="increment" field="4fe3-cc78-baa4-a7ad" value="1">
              <repeats>
                <repeat field="selections" scope="94de-e05a-c0db-5fb6" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="528f-f0b3-bb2b-8a6a" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
            <modifier type="increment" field="a05d-324a-bd1a-767e" value="2">
              <repeats>
                <repeat field="selections" scope="94de-e05a-c0db-5fb6" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="119d-9a90-a1f5-6fe1" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
          </modifiers>
          <modifierGroups>
            <modifierGroup>
              <repeats>
                <repeat field="selections" scope="94de-e05a-c0db-5fb6" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="31f8-993a-622a-e07c" repeats="1" roundUp="false"/>
              </repeats>
              <modifiers>
                <modifier type="increment" field="6748-870d-e310-84fa" value="1"/>
                <modifier type="decrement" field="3c64-20de-b449-9e2a" value="1"/>
              </modifiers>
            </modifierGroup>
          </modifierGroups>
          <characteristics>
            <characteristic name="Weight" typeId="4efa-dfe3-7fb1-23fa">Heavyweight</characteristic>
            <characteristic name="Hull Points" typeId="a05d-324a-bd1a-767e">20</characteristic>
            <characteristic name="Handling" typeId="6748-870d-e310-84fa">2</characteristic>
            <characteristic name="Max Gear" typeId="3c64-20de-b449-9e2a">4</characteristic>
            <characteristic name="Crew" typeId="4fe3-cc78-baa4-a7ad">5</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <rules>
        <rule id="cba5-b722-e9d9-0efd" name="War Rig Rules" publicationId="55c7-45e5-pubEL3DK" page="116" hidden="false"/>
      </rules>
      <categoryLinks>
        <categoryLink id="8763-0150-0593-ea93" name="New CategoryLink" hidden="false" targetId="fcb8-8c55-ab34-03d1" primary="true"/>
        <categoryLink id="7115-8178-a946-e0c5" name="Heavyweight" hidden="false" targetId="3e72-1039-e998-bd5a" primary="false"/>
      </categoryLinks>
      <entryLinks>
        <entryLink id="8cd4-16a4-251a-649c" name="Options" hidden="false" collective="false" import="true" targetId="5707-6abb-7abe-9612" type="selectionEntryGroup">
          <modifiers>
            <modifier type="set" field="0a0d-4ca7-dc7b-eb21" value="5"/>
          </modifiers>
        </entryLink>
        <entryLink id="60c9-4ba2-0244-2dc5" name="Driver Perks" hidden="false" collective="false" import="true" targetId="efd0-4e11-81a4-f448" type="selectionEntryGroup"/>
        <entryLink id="b6d6-9437-9541-717c" name="Trailer Upgrades" hidden="false" collective="false" import="true" targetId="04c4-0e9f-556b-817c" type="selectionEntryGroup"/>
      </entryLinks>
      <costs>
        <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="40.0"/>
        <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="97fe-b03b-81d4-936f" name="Bus" hidden="false" collective="false" import="true" type="model">
      <modifiers>
        <modifier type="set" field="hidden" value="true">
          <conditionGroups>
            <conditionGroup type="or">
              <conditions>
                <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="f324-d908-797f-872a" type="equalTo"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
      </modifiers>
      <profiles>
        <profile id="7361-8484-543f-79a2" name="Bus" hidden="false" typeId="e5e1-86e0-5830-ebf3" typeName="Vehicle">
          <modifiers>
            <modifier type="increment" field="a05d-324a-bd1a-767e" value="2">
              <repeats>
                <repeat field="selections" scope="97fe-b03b-81d4-936f" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="89d7-ec4b-86b1-20fc" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
            <modifier type="increment" field="4fe3-cc78-baa4-a7ad" value="1">
              <repeats>
                <repeat field="selections" scope="97fe-b03b-81d4-936f" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="528f-f0b3-bb2b-8a6a" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
            <modifier type="increment" field="a05d-324a-bd1a-767e" value="2">
              <repeats>
                <repeat field="selections" scope="97fe-b03b-81d4-936f" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="119d-9a90-a1f5-6fe1" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
          </modifiers>
          <modifierGroups>
            <modifierGroup>
              <repeats>
                <repeat field="selections" scope="97fe-b03b-81d4-936f" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="31f8-993a-622a-e07c" repeats="1" roundUp="false"/>
              </repeats>
              <modifiers>
                <modifier type="increment" field="6748-870d-e310-84fa" value="1"/>
                <modifier type="decrement" field="3c64-20de-b449-9e2a" value="1"/>
              </modifiers>
            </modifierGroup>
          </modifierGroups>
          <characteristics>
            <characteristic name="Weight" typeId="4efa-dfe3-7fb1-23fa">Heavyweight</characteristic>
            <characteristic name="Hull Points" typeId="a05d-324a-bd1a-767e">16</characteristic>
            <characteristic name="Handling" typeId="6748-870d-e310-84fa">2</characteristic>
            <characteristic name="Max Gear" typeId="3c64-20de-b449-9e2a">3</characteristic>
            <characteristic name="Crew" typeId="4fe3-cc78-baa4-a7ad">8</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <categoryLinks>
        <categoryLink id="7003-7a9e-8d3f-4151" name="New CategoryLink" hidden="false" targetId="fcb8-8c55-ab34-03d1" primary="true"/>
        <categoryLink id="c22a-bdbd-dcaf-30e0" name="Heavyweight" hidden="false" targetId="3e72-1039-e998-bd5a" primary="false"/>
      </categoryLinks>
      <entryLinks>
        <entryLink id="4bbd-1803-65c5-1bdd" name="Options" hidden="false" collective="false" import="true" targetId="5707-6abb-7abe-9612" type="selectionEntryGroup">
          <modifiers>
            <modifier type="set" field="0a0d-4ca7-dc7b-eb21" value="3"/>
            <modifier type="increment" field="0a0d-4ca7-dc7b-eb21" value="1.0">
              <conditions>
                <condition field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="e44a-e5fc-d07b-86c5" type="equalTo"/>
              </conditions>
            </modifier>
            <modifier type="increment" field="0a0d-4ca7-dc7b-eb21" value="3.0">
              <conditions>
                <condition field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="36d8-6a63-8ac4-d919" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
        </entryLink>
        <entryLink id="15a1-d338-8623-bc26" name="Driver Perks" hidden="false" collective="false" import="true" targetId="efd0-4e11-81a4-f448" type="selectionEntryGroup"/>
      </entryLinks>
      <costs>
        <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="30.0"/>
        <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="5fc8-4273-0b18-c611" name="Car" hidden="false" collective="false" import="true" type="model">
      <modifiers>
        <modifier type="decrement" field="91a9-beed-6d55-d7ea" value="4.0">
          <conditions>
            <condition field="selections" scope="5fc8-4273-0b18-c611" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="9616-1553-edcf-11ad" type="equalTo"/>
          </conditions>
        </modifier>
      </modifiers>
      <profiles>
        <profile id="34bf-184a-b561-b5d1" name="Car" hidden="false" typeId="e5e1-86e0-5830-ebf3" typeName="Vehicle">
          <modifiers>
            <modifier type="decrement" field="a05d-324a-bd1a-767e" value="2">
              <conditions>
                <condition field="selections" scope="5fc8-4273-0b18-c611" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="9616-1553-edcf-11ad" type="equalTo"/>
              </conditions>
            </modifier>
            <modifier type="increment" field="a05d-324a-bd1a-767e" value="2">
              <repeats>
                <repeat field="selections" scope="5fc8-4273-0b18-c611" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="89d7-ec4b-86b1-20fc" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
            <modifier type="increment" field="4fe3-cc78-baa4-a7ad" value="1">
              <repeats>
                <repeat field="selections" scope="5fc8-4273-0b18-c611" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="528f-f0b3-bb2b-8a6a" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
            <modifier type="increment" field="a05d-324a-bd1a-767e" value="2">
              <repeats>
                <repeat field="selections" scope="5fc8-4273-0b18-c611" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="119d-9a90-a1f5-6fe1" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
          </modifiers>
          <modifierGroups>
            <modifierGroup>
              <repeats>
                <repeat field="selections" scope="5fc8-4273-0b18-c611" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="31f8-993a-622a-e07c" repeats="1" roundUp="false"/>
              </repeats>
              <modifiers>
                <modifier type="increment" field="6748-870d-e310-84fa" value="1"/>
                <modifier type="decrement" field="3c64-20de-b449-9e2a" value="1"/>
              </modifiers>
            </modifierGroup>
          </modifierGroups>
          <characteristics>
            <characteristic name="Weight" typeId="4efa-dfe3-7fb1-23fa">Middleweight</characteristic>
            <characteristic name="Hull Points" typeId="a05d-324a-bd1a-767e">10</characteristic>
            <characteristic name="Handling" typeId="6748-870d-e310-84fa">3</characteristic>
            <characteristic name="Max Gear" typeId="3c64-20de-b449-9e2a">5</characteristic>
            <characteristic name="Crew" typeId="4fe3-cc78-baa4-a7ad">2</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <categoryLinks>
        <categoryLink id="b62b-24c2-ac9c-cde8" name="New CategoryLink" hidden="false" targetId="fcb8-8c55-ab34-03d1" primary="true"/>
        <categoryLink id="18a9-8c9d-3909-f319" name="Middleweight" hidden="false" targetId="96a0-cfb4-47ee-0a2f" primary="false"/>
      </categoryLinks>
      <entryLinks>
        <entryLink id="101c-f2ec-ca46-6094" name="Options" hidden="false" collective="false" import="true" targetId="5707-6abb-7abe-9612" type="selectionEntryGroup">
          <modifiers>
            <modifier type="set" field="0a0d-4ca7-dc7b-eb21" value="2.0"/>
            <modifier type="increment" field="0a0d-4ca7-dc7b-eb21" value="1.0">
              <conditions>
                <condition field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="e44a-e5fc-d07b-86c5" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
        </entryLink>
        <entryLink id="4931-d253-cb52-cee9" name="Driver Perks" hidden="false" collective="false" import="true" targetId="efd0-4e11-81a4-f448" type="selectionEntryGroup"/>
      </entryLinks>
      <costs>
        <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="12.0"/>
        <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="b242-a818-85e6-b6db" name="Buggy" hidden="false" collective="false" import="true" type="model">
      <modifiers>
        <modifier type="set" field="hidden" value="true">
          <conditionGroups>
            <conditionGroup type="or">
              <conditions>
                <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="6544-f65b-4420-3486" type="equalTo"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
      </modifiers>
      <profiles>
        <profile id="70ea-46c6-1dde-5ddc" name="Buggy" publicationId="55c7-45e5-pubEL3DK" page="66" hidden="false" typeId="e5e1-86e0-5830-ebf3" typeName="Vehicle">
          <modifiers>
            <modifier type="increment" field="a05d-324a-bd1a-767e" value="2">
              <repeats>
                <repeat field="selections" scope="b242-a818-85e6-b6db" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="89d7-ec4b-86b1-20fc" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
            <modifier type="increment" field="4fe3-cc78-baa4-a7ad" value="1">
              <repeats>
                <repeat field="selections" scope="b242-a818-85e6-b6db" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="528f-f0b3-bb2b-8a6a" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
            <modifier type="increment" field="a05d-324a-bd1a-767e" value="2">
              <repeats>
                <repeat field="selections" scope="b242-a818-85e6-b6db" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="119d-9a90-a1f5-6fe1" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
          </modifiers>
          <modifierGroups>
            <modifierGroup>
              <repeats>
                <repeat field="selections" scope="b242-a818-85e6-b6db" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="31f8-993a-622a-e07c" repeats="1" roundUp="false"/>
              </repeats>
              <modifiers>
                <modifier type="increment" field="6748-870d-e310-84fa" value="1"/>
                <modifier type="decrement" field="3c64-20de-b449-9e2a" value="1"/>
              </modifiers>
            </modifierGroup>
          </modifierGroups>
          <characteristics>
            <characteristic name="Weight" typeId="4efa-dfe3-7fb1-23fa">Lightweight</characteristic>
            <characteristic name="Hull Points" typeId="a05d-324a-bd1a-767e">6</characteristic>
            <characteristic name="Handling" typeId="6748-870d-e310-84fa">4</characteristic>
            <characteristic name="Max Gear" typeId="3c64-20de-b449-9e2a">6</characteristic>
            <characteristic name="Crew" typeId="4fe3-cc78-baa4-a7ad">2</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <rules>
        <rule id="d41e-f59d-6bc2-26ea" name="Roll Cage" publicationId="55c7-45e5-pubEL3DK" page="66" hidden="false">
          <description>When this vehicle suffers a flip, this vehicle may choose to ignore t he 2 hits received from the flip.</description>
        </rule>
      </rules>
      <categoryLinks>
        <categoryLink id="a782-4dbd-d106-7293" name="New CategoryLink" hidden="false" targetId="fcb8-8c55-ab34-03d1" primary="true"/>
        <categoryLink id="dca2-00ce-51b0-6e64" name="Lightweight" hidden="false" targetId="d4f7-0b52-6568-ee8f" primary="false"/>
      </categoryLinks>
      <entryLinks>
        <entryLink id="3c6e-fdb3-7345-4ebd" name="Options" hidden="false" collective="false" import="true" targetId="5707-6abb-7abe-9612" type="selectionEntryGroup">
          <modifiers>
            <modifier type="set" field="0a0d-4ca7-dc7b-eb21" value="2.0"/>
          </modifiers>
        </entryLink>
        <entryLink id="9c69-5770-7fd6-34c3" name="Driver Perks" hidden="false" collective="false" import="true" targetId="efd0-4e11-81a4-f448" type="selectionEntryGroup"/>
      </entryLinks>
      <costs>
        <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="6.0"/>
        <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="c596-f85f-ae8b-fa32" name="Monster Truck" hidden="false" collective="false" import="true" type="model">
      <profiles>
        <profile id="0a01-8509-d9d4-52fb" name="Monster Truck" hidden="false" typeId="e5e1-86e0-5830-ebf3" typeName="Vehicle">
          <modifiers>
            <modifier type="increment" field="a05d-324a-bd1a-767e" value="2">
              <repeats>
                <repeat field="selections" scope="c596-f85f-ae8b-fa32" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="89d7-ec4b-86b1-20fc" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
            <modifier type="increment" field="4fe3-cc78-baa4-a7ad" value="1">
              <repeats>
                <repeat field="selections" scope="c596-f85f-ae8b-fa32" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="528f-f0b3-bb2b-8a6a" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
            <modifier type="increment" field="a05d-324a-bd1a-767e" value="2">
              <repeats>
                <repeat field="selections" scope="c596-f85f-ae8b-fa32" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="119d-9a90-a1f5-6fe1" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
          </modifiers>
          <modifierGroups>
            <modifierGroup>
              <repeats>
                <repeat field="selections" scope="c596-f85f-ae8b-fa32" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="31f8-993a-622a-e07c" repeats="1" roundUp="false"/>
              </repeats>
              <modifiers>
                <modifier type="increment" field="6748-870d-e310-84fa" value="1"/>
                <modifier type="decrement" field="3c64-20de-b449-9e2a" value="1"/>
              </modifiers>
            </modifierGroup>
          </modifierGroups>
          <characteristics>
            <characteristic name="Weight" typeId="4efa-dfe3-7fb1-23fa">Heavyweight</characteristic>
            <characteristic name="Hull Points" typeId="a05d-324a-bd1a-767e">10</characteristic>
            <characteristic name="Handling" typeId="6748-870d-e310-84fa">3</characteristic>
            <characteristic name="Max Gear" typeId="3c64-20de-b449-9e2a">4</characteristic>
            <characteristic name="Crew" typeId="4fe3-cc78-baa4-a7ad">2</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <rules>
        <rule id="88de-2544-496b-0eda" name="All Terrain" publicationId="55c7-45e5-pubEL3DK" page="71" hidden="false">
          <description>This vehicle may ignore the penalties for rough and treacherous surfaces.</description>
        </rule>
        <rule id="99e1-e0f8-5e7f-7d35" name="Up and Over" publicationId="55c7-45e5-pubEL3DK" page="71" hidden="false">
          <description>During this vehicle&apos;s Movement Step, after resolving a Collision with an obstruction of a lower weight class, this vehicle may declare that it is going &quot;Up and Over&quot;. If it does, it may ignore the obstruction for the remainder of its Movement Step, as it drives right over the top of it.  This vehicle cannot use this ability to ignore another vehicle with the Up and Over special rule.</description>
        </rule>
      </rules>
      <categoryLinks>
        <categoryLink id="a438-4dd9-a586-5aa8" name="New CategoryLink" hidden="false" targetId="fcb8-8c55-ab34-03d1" primary="true"/>
        <categoryLink id="8353-4d3f-c166-b4c7" name="Heavyweight" hidden="false" targetId="3e72-1039-e998-bd5a" primary="false"/>
      </categoryLinks>
      <entryLinks>
        <entryLink id="7a24-501b-6c12-29c3" name="Options" hidden="false" collective="false" import="true" targetId="5707-6abb-7abe-9612" type="selectionEntryGroup">
          <modifiers>
            <modifier type="set" field="0a0d-4ca7-dc7b-eb21" value="2.0"/>
            <modifier type="increment" field="0a0d-4ca7-dc7b-eb21" value="3.0">
              <conditions>
                <condition field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="36d8-6a63-8ac4-d919" type="equalTo"/>
              </conditions>
            </modifier>
            <modifier type="increment" field="0a0d-4ca7-dc7b-eb21" value="1.0">
              <conditions>
                <condition field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="e44a-e5fc-d07b-86c5" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
        </entryLink>
        <entryLink id="433e-4d58-962b-3d56" name="Driver Perks" hidden="false" collective="false" import="true" targetId="efd0-4e11-81a4-f448" type="selectionEntryGroup"/>
      </entryLinks>
      <costs>
        <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="25.0"/>
        <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="c4d1-c411-d2c4-c182" name="Performance Car" hidden="false" collective="false" import="true" type="model">
      <modifiers>
        <modifier type="decrement" field="91a9-beed-6d55-d7ea" value="4">
          <conditions>
            <condition field="selections" scope="c4d1-c411-d2c4-c182" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="9616-1553-edcf-11ad" type="equalTo"/>
          </conditions>
        </modifier>
      </modifiers>
      <profiles>
        <profile id="3e05-41bf-6d72-e1cd" name="Performance Car" hidden="false" typeId="e5e1-86e0-5830-ebf3" typeName="Vehicle">
          <modifiers>
            <modifier type="decrement" field="a05d-324a-bd1a-767e" value="2">
              <conditions>
                <condition field="selections" scope="c4d1-c411-d2c4-c182" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="9616-1553-edcf-11ad" type="equalTo"/>
              </conditions>
            </modifier>
            <modifier type="increment" field="a05d-324a-bd1a-767e" value="2">
              <repeats>
                <repeat field="selections" scope="c4d1-c411-d2c4-c182" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="89d7-ec4b-86b1-20fc" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
            <modifier type="increment" field="4fe3-cc78-baa4-a7ad" value="1">
              <repeats>
                <repeat field="selections" scope="c4d1-c411-d2c4-c182" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="528f-f0b3-bb2b-8a6a" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
            <modifier type="increment" field="a05d-324a-bd1a-767e" value="2">
              <repeats>
                <repeat field="selections" scope="c4d1-c411-d2c4-c182" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="119d-9a90-a1f5-6fe1" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
          </modifiers>
          <modifierGroups>
            <modifierGroup>
              <repeats>
                <repeat field="selections" scope="c4d1-c411-d2c4-c182" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="31f8-993a-622a-e07c" repeats="1" roundUp="false"/>
              </repeats>
              <modifiers>
                <modifier type="increment" field="6748-870d-e310-84fa" value="1"/>
                <modifier type="decrement" field="3c64-20de-b449-9e2a" value="1"/>
              </modifiers>
            </modifierGroup>
          </modifierGroups>
          <characteristics>
            <characteristic name="Weight" typeId="4efa-dfe3-7fb1-23fa">Middleweight</characteristic>
            <characteristic name="Hull Points" typeId="a05d-324a-bd1a-767e">8</characteristic>
            <characteristic name="Handling" typeId="6748-870d-e310-84fa">4</characteristic>
            <characteristic name="Max Gear" typeId="3c64-20de-b449-9e2a">6</characteristic>
            <characteristic name="Crew" typeId="4fe3-cc78-baa4-a7ad">1</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <rules>
        <rule id="f8e3-5526-fe88-8a30" name="Slip Away" publicationId="55c7-45e5-pubEL3DK" page="66" hidden="false">
          <description>If this vehicle is targeted with a tailgate or T-Bone Smash Attack, and this vehicle declares Evade as its reaction, this vehicle may perform a free activation immediately after the acrive vehicle completes its activation.  This free activation does not count as the vehicle&apos;s activation this Gear Phase.  Use of Slip Away rule can allow this vehicle to activate twice in a row, twice in one Gear Phase, or  once in a Gear Phase that it does not qualify to actiave in (and it might then change Gear and qualify late in that phase). Friendly vehicles can trigger this effect.</description>
        </rule>
      </rules>
      <categoryLinks>
        <categoryLink id="0476-8a38-5a47-db33" name="New CategoryLink" hidden="false" targetId="fcb8-8c55-ab34-03d1" primary="true"/>
        <categoryLink id="8f01-b99a-bcd4-ff56" name="Middleweight" hidden="false" targetId="96a0-cfb4-47ee-0a2f" primary="false"/>
      </categoryLinks>
      <entryLinks>
        <entryLink id="63ff-d6ab-3570-b6b5" name="Options" hidden="false" collective="false" import="true" targetId="5707-6abb-7abe-9612" type="selectionEntryGroup">
          <modifiers>
            <modifier type="set" field="0a0d-4ca7-dc7b-eb21" value="2"/>
            <modifier type="increment" field="0a0d-4ca7-dc7b-eb21" value="1.0">
              <conditions>
                <condition field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="e44a-e5fc-d07b-86c5" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
        </entryLink>
        <entryLink id="4eb3-957b-acec-690a" name="Driver Perks" hidden="false" collective="false" import="true" targetId="efd0-4e11-81a4-f448" type="selectionEntryGroup"/>
      </entryLinks>
      <costs>
        <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="15.0"/>
        <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="de6f-4971-d7ee-d6ea" name="Truck" hidden="false" collective="false" import="true" type="model">
      <modifiers>
        <modifier type="set" field="hidden" value="true">
          <conditionGroups>
            <conditionGroup type="or">
              <conditions>
                <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="f324-d908-797f-872a" type="equalTo"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
        <modifier type="decrement" field="91a9-beed-6d55-d7ea" value="4">
          <conditions>
            <condition field="selections" scope="de6f-4971-d7ee-d6ea" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="9616-1553-edcf-11ad" type="equalTo"/>
          </conditions>
        </modifier>
      </modifiers>
      <profiles>
        <profile id="9bc0-837d-fb9f-cd50" name="Truck" hidden="false" typeId="e5e1-86e0-5830-ebf3" typeName="Vehicle">
          <modifiers>
            <modifier type="decrement" field="a05d-324a-bd1a-767e" value="2">
              <conditions>
                <condition field="selections" scope="de6f-4971-d7ee-d6ea" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="9616-1553-edcf-11ad" type="equalTo"/>
              </conditions>
            </modifier>
            <modifier type="increment" field="a05d-324a-bd1a-767e" value="2">
              <repeats>
                <repeat field="selections" scope="de6f-4971-d7ee-d6ea" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="89d7-ec4b-86b1-20fc" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
            <modifier type="increment" field="4fe3-cc78-baa4-a7ad" value="1">
              <repeats>
                <repeat field="selections" scope="de6f-4971-d7ee-d6ea" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="528f-f0b3-bb2b-8a6a" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
            <modifier type="increment" field="a05d-324a-bd1a-767e" value="2">
              <repeats>
                <repeat field="selections" scope="de6f-4971-d7ee-d6ea" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="119d-9a90-a1f5-6fe1" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
          </modifiers>
          <modifierGroups>
            <modifierGroup>
              <repeats>
                <repeat field="selections" scope="de6f-4971-d7ee-d6ea" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="31f8-993a-622a-e07c" repeats="1" roundUp="false"/>
              </repeats>
              <modifiers>
                <modifier type="increment" field="6748-870d-e310-84fa" value="1"/>
                <modifier type="decrement" field="3c64-20de-b449-9e2a" value="1"/>
              </modifiers>
            </modifierGroup>
          </modifierGroups>
          <characteristics>
            <characteristic name="Weight" typeId="4efa-dfe3-7fb1-23fa">Middleweight</characteristic>
            <characteristic name="Hull Points" typeId="a05d-324a-bd1a-767e">12</characteristic>
            <characteristic name="Handling" typeId="6748-870d-e310-84fa">2</characteristic>
            <characteristic name="Max Gear" typeId="3c64-20de-b449-9e2a">4</characteristic>
            <characteristic name="Crew" typeId="4fe3-cc78-baa4-a7ad">3</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <categoryLinks>
        <categoryLink id="6573-64d1-80c4-b81f" name="New CategoryLink" hidden="false" targetId="fcb8-8c55-ab34-03d1" primary="true"/>
        <categoryLink id="90bf-e1b9-27e8-bc8b" name="Middleweight" hidden="false" targetId="96a0-cfb4-47ee-0a2f" primary="false"/>
      </categoryLinks>
      <entryLinks>
        <entryLink id="0f6a-24f0-57e4-5dc9" name="Options" hidden="false" collective="false" import="true" targetId="5707-6abb-7abe-9612" type="selectionEntryGroup">
          <modifiers>
            <modifier type="set" field="0a0d-4ca7-dc7b-eb21" value="3.0"/>
            <modifier type="increment" field="0a0d-4ca7-dc7b-eb21" value="1.0">
              <conditions>
                <condition field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="e44a-e5fc-d07b-86c5" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
        </entryLink>
        <entryLink id="59d0-adf4-9527-08d3" name="Driver Perks" hidden="false" collective="false" import="true" targetId="efd0-4e11-81a4-f448" type="selectionEntryGroup"/>
      </entryLinks>
      <costs>
        <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="15.0"/>
        <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="f964-c263-ff17-1fc5" name="Gyrocopter" hidden="false" collective="false" import="true" type="model">
      <modifiers>
        <modifier type="set" field="hidden" value="true">
          <conditionGroups>
            <conditionGroup type="or">
              <conditions>
                <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="2a2d-ea1c-ee35-aa8e" type="equalTo"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
      </modifiers>
      <profiles>
        <profile id="1810-3cc3-71b3-395f" name="Gyrocopter" hidden="false" typeId="e5e1-86e0-5830-ebf3" typeName="Vehicle">
          <modifiers>
            <modifier type="increment" field="a05d-324a-bd1a-767e" value="2">
              <repeats>
                <repeat field="selections" scope="f964-c263-ff17-1fc5" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="89d7-ec4b-86b1-20fc" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
            <modifier type="increment" field="4fe3-cc78-baa4-a7ad" value="1">
              <repeats>
                <repeat field="selections" scope="f964-c263-ff17-1fc5" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="528f-f0b3-bb2b-8a6a" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
            <modifier type="increment" field="a05d-324a-bd1a-767e" value="2">
              <repeats>
                <repeat field="selections" scope="f964-c263-ff17-1fc5" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="119d-9a90-a1f5-6fe1" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
          </modifiers>
          <characteristics>
            <characteristic name="Weight" typeId="4efa-dfe3-7fb1-23fa">Middleweight</characteristic>
            <characteristic name="Hull Points" typeId="a05d-324a-bd1a-767e">4</characteristic>
            <characteristic name="Handling" typeId="6748-870d-e310-84fa">4</characteristic>
            <characteristic name="Max Gear" typeId="3c64-20de-b449-9e2a">6</characteristic>
            <characteristic name="Crew" typeId="4fe3-cc78-baa4-a7ad">1</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <rules>
        <rule id="5f2f-e459-497a-9b3f" name="Airborne" publicationId="55c7-45e5-pubEL3DK" page="70" hidden="false">
          <description>This vehicle ignores non-tall obstructions, dropped weapons, and terrain at all times, except when checking for Cover, and when targeting other vehicles in its Attack Step.
Other vehicles ignore this vehicle at all times, except that other vehicles may target this vehicle during their Attack Steps. This vehicle cannot be involved in Collisions.</description>
        </rule>
        <rule id="93b9-6e79-1ff6-49b1" name="Airwolf" publicationId="55c7-45e5-pubEL3DK" page="70" hidden="false">
          <description>At the start of this vehicle&apos;s activation, this vehicle may gain 2 Hazard Tokens to make a single pivot about its centre point, up to 90 degrees.</description>
        </rule>
        <rule id="ae9e-45bd-b264-9fa6" name="Bombs Away" publicationId="55c7-45e5-pubEL3DK" page="70" hidden="false">
          <description>When purchasing weapons for this vehicle, this vehicle may count dropped weapons as requiring 0 build slots. This vehicle may attack with any number of dropped weapons in a single Attack Step.</description>
        </rule>
      </rules>
      <categoryLinks>
        <categoryLink id="3eb3-f785-6996-7eb4" name="New CategoryLink" hidden="false" targetId="fcb8-8c55-ab34-03d1" primary="true"/>
        <categoryLink id="5e37-9ab6-9d21-60c5" name="Middleweight" hidden="false" targetId="96a0-cfb4-47ee-0a2f" primary="false"/>
        <categoryLink id="8661-622e-3682-5522" name="Flying" hidden="false" targetId="39da-2a47-c4bf-ba33" primary="false"/>
      </categoryLinks>
      <entryLinks>
        <entryLink id="99cd-eec7-a819-5646" name="Options" hidden="false" collective="false" import="true" targetId="5707-6abb-7abe-9612" type="selectionEntryGroup">
          <modifiers>
            <modifier type="set" field="0a0d-4ca7-dc7b-eb21" value="0"/>
          </modifiers>
        </entryLink>
        <entryLink id="4e95-7c5f-d967-ac32" name="Driver Perks" hidden="false" collective="false" import="true" targetId="efd0-4e11-81a4-f448" type="selectionEntryGroup"/>
      </entryLinks>
      <costs>
        <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="10.0"/>
        <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="93be-e146-d79b-13d6" name="Helicopter" hidden="true" collective="false" import="true" type="model">
      <modifiers>
        <modifier type="set" field="hidden" value="false">
          <conditionGroups>
            <conditionGroup type="or">
              <conditions>
                <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="6544-f65b-4420-3486" type="equalTo"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
      </modifiers>
      <constraints>
        <constraint field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="75e0-7eb9-5c8e-2424" type="max"/>
      </constraints>
      <profiles>
        <profile id="36e6-f501-4610-9392" name="Helicopter" hidden="false" typeId="e5e1-86e0-5830-ebf3" typeName="Vehicle">
          <modifiers>
            <modifier type="increment" field="a05d-324a-bd1a-767e" value="2">
              <repeats>
                <repeat field="selections" scope="93be-e146-d79b-13d6" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="89d7-ec4b-86b1-20fc" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
            <modifier type="increment" field="4fe3-cc78-baa4-a7ad" value="1">
              <repeats>
                <repeat field="selections" scope="93be-e146-d79b-13d6" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="528f-f0b3-bb2b-8a6a" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
            <modifier type="increment" field="a05d-324a-bd1a-767e" value="2">
              <repeats>
                <repeat field="selections" scope="93be-e146-d79b-13d6" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="119d-9a90-a1f5-6fe1" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
          </modifiers>
          <characteristics>
            <characteristic name="Weight" typeId="4efa-dfe3-7fb1-23fa">Heavyweight</characteristic>
            <characteristic name="Hull Points" typeId="a05d-324a-bd1a-767e">8</characteristic>
            <characteristic name="Handling" typeId="6748-870d-e310-84fa">3</characteristic>
            <characteristic name="Max Gear" typeId="3c64-20de-b449-9e2a">4</characteristic>
            <characteristic name="Crew" typeId="4fe3-cc78-baa4-a7ad">3</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <rules>
        <rule id="f90e-7670-22a1-5e96" name="Airborne" publicationId="55c7-45e5-pubEL3DK" page="70" hidden="false">
          <description>This vehicle ignores non-tall obstructions, dropped weapons, and terrain at all times, except when checking for Cover, and when targeting other vehicles in its Attack Step.
Other vehicles ignore this vehicle at all times, except that other vehicles may target this vehicle during their Attack Steps. This vehicle cannot be involved in Collisions.</description>
        </rule>
        <rule id="534d-ea63-c99d-c4e0" name="Airwolf" publicationId="55c7-45e5-pubEL3DK" page="70" hidden="false">
          <description>At the start of this vehicle&apos;s activation, this vehicle may gain 2 Hazard Tokens to make a single pivot about its centre point, up to 90 degrees.</description>
        </rule>
        <rule id="860c-c471-cf1d-2ef7" name="Bombs Away" publicationId="55c7-45e5-pubEL3DK" page="70" hidden="false">
          <description>When purchasing weapons for this vehicle, this vehicle may count dropped weapons as requiring 0 build slots. This vehicle may attack with any number of dropped weapons in a single Attack Step.</description>
        </rule>
      </rules>
      <categoryLinks>
        <categoryLink id="72f7-279b-1a50-0992" name="New CategoryLink" hidden="false" targetId="fcb8-8c55-ab34-03d1" primary="true"/>
        <categoryLink id="9f4a-9500-f794-5a8a" name="Flying" hidden="false" targetId="39da-2a47-c4bf-ba33" primary="false"/>
        <categoryLink id="9146-ece2-0090-a4ae" name="Heavyweight" hidden="false" targetId="3e72-1039-e998-bd5a" primary="false"/>
      </categoryLinks>
      <entryLinks>
        <entryLink id="90d5-22eb-7d59-c536" name="Options" hidden="false" collective="false" import="true" targetId="5707-6abb-7abe-9612" type="selectionEntryGroup">
          <modifiers>
            <modifier type="set" field="0a0d-4ca7-dc7b-eb21" value="4"/>
          </modifiers>
        </entryLink>
        <entryLink id="159c-3b4f-88ce-bb0c" name="Driver Perks" hidden="false" collective="false" import="true" targetId="efd0-4e11-81a4-f448" type="selectionEntryGroup"/>
      </entryLinks>
      <costs>
        <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="30.0"/>
        <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="5c3b-7e88-5b9a-51cd" name="Tank" hidden="true" collective="false" import="true" type="model">
      <modifiers>
        <modifier type="set" field="hidden" value="false">
          <conditionGroups>
            <conditionGroup type="or">
              <conditions>
                <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="6544-f65b-4420-3486" type="equalTo"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
      </modifiers>
      <constraints>
        <constraint field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="a7c3-f49e-fc12-1014" type="max"/>
      </constraints>
      <profiles>
        <profile id="d643-d65c-f332-4f87" name="Tank" hidden="false" typeId="e5e1-86e0-5830-ebf3" typeName="Vehicle">
          <modifiers>
            <modifier type="increment" field="a05d-324a-bd1a-767e" value="2">
              <repeats>
                <repeat field="selections" scope="5c3b-7e88-5b9a-51cd" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="89d7-ec4b-86b1-20fc" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
            <modifier type="increment" field="4fe3-cc78-baa4-a7ad" value="1">
              <repeats>
                <repeat field="selections" scope="5c3b-7e88-5b9a-51cd" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="528f-f0b3-bb2b-8a6a" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
            <modifier type="increment" field="a05d-324a-bd1a-767e" value="2">
              <repeats>
                <repeat field="selections" scope="5c3b-7e88-5b9a-51cd" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="119d-9a90-a1f5-6fe1" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
          </modifiers>
          <characteristics>
            <characteristic name="Weight" typeId="4efa-dfe3-7fb1-23fa">Heavyweight</characteristic>
            <characteristic name="Hull Points" typeId="a05d-324a-bd1a-767e">20</characteristic>
            <characteristic name="Handling" typeId="6748-870d-e310-84fa">4</characteristic>
            <characteristic name="Max Gear" typeId="3c64-20de-b449-9e2a">3</characteristic>
            <characteristic name="Crew" typeId="4fe3-cc78-baa4-a7ad">3</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <rules>
        <rule id="68ee-c99c-9dcb-2be4" name="All Terrain" publicationId="55c7-45e5-pubEL3DK" page="71" hidden="false">
          <description>This vehicle may ignore the penalties for rough and treacherous surfaces.</description>
        </rule>
        <rule id="44a5-dd26-8a58-a3bf" name="Up and Over" publicationId="55c7-45e5-pubEL3DK" page="71" hidden="false">
          <description>During this vehicle&apos;s Movement Step, after resolving a Collision with an obstruction of a lower weight class, this vehicle may declare that it is going &quot;Up and Over&quot;. If it does, it may ignore the obstruction for the remainder of its Movement Step, as it drives right over the top of it.  This vehicle cannot use this ability to ignore another vehicle with the Up and Over special rule.</description>
        </rule>
        <rule id="dab7-e674-a443-50ea" name="Turret" publicationId="55c7-45e5-pubEL3DK" page="71" hidden="false">
          <description>This vehicle may count one weapon as turret-mounted without paying for the upgrade.</description>
        </rule>
        <rule id="b432-d6be-5255-1754" name="Pivot" publicationId="55c7-45e5-pubEL3DK" page="69" hidden="false">
          <description>At the start of this vehicle&apos;s activation, if this vehicle&apos;s current Gear is 1, this vehicle may make a pivot about its centre to face any direction. This pivot cannot cause a Collision and cannot leave this vehicle touching an obstruction.</description>
        </rule>
      </rules>
      <categoryLinks>
        <categoryLink id="683d-0da3-021d-4a3e" name="New CategoryLink" hidden="false" targetId="fcb8-8c55-ab34-03d1" primary="true"/>
        <categoryLink id="998b-c6af-ca65-e170" name="Heavyweight" hidden="false" targetId="3e72-1039-e998-bd5a" primary="false"/>
      </categoryLinks>
      <entryLinks>
        <entryLink id="cb3c-2686-8e43-d259" name="Options" hidden="false" collective="false" import="true" targetId="5707-6abb-7abe-9612" type="selectionEntryGroup">
          <modifiers>
            <modifier type="set" field="0a0d-4ca7-dc7b-eb21" value="4"/>
            <modifier type="increment" field="0a0d-4ca7-dc7b-eb21" value="1.0">
              <conditions>
                <condition field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="e44a-e5fc-d07b-86c5" type="equalTo"/>
              </conditions>
            </modifier>
            <modifier type="increment" field="0a0d-4ca7-dc7b-eb21" value="3.0">
              <conditions>
                <condition field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="36d8-6a63-8ac4-d919" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
        </entryLink>
        <entryLink id="5211-405a-d6d9-4f65" name="Driver Perks" hidden="false" collective="false" import="true" targetId="efd0-4e11-81a4-f448" type="selectionEntryGroup"/>
      </entryLinks>
      <costs>
        <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="40.0"/>
        <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="9318-eb03-9bdd-ec00" name="Sponsor" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="53ff-293f-a3e9-7d0a" type="min"/>
        <constraint field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="d982-3fb2-2e88-3886" type="max"/>
      </constraints>
      <selectionEntryGroups>
        <selectionEntryGroup id="e0ac-21ce-2203-7e81" name="Sponsor" hidden="false" collective="false" import="true">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="258d-98df-eed2-405c" type="max"/>
          </constraints>
          <selectionEntries>
            <selectionEntry id="6544-f65b-4420-3486" name="Rutherford" hidden="false" collective="false" import="true" type="upgrade">
              <categoryLinks>
                <categoryLink id="40ec-741e-f242-544f" name="New CategoryLink" hidden="false" targetId="6b0c-dbca-afd2-7a45" primary="false"/>
              </categoryLinks>
              <costs>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="3057-1f8e-63b6-95e6" name="Mishkin" hidden="false" collective="false" import="true" type="upgrade">
              <categoryLinks>
                <categoryLink id="c180-e6e0-8b46-219f" name="New CategoryLink" hidden="false" targetId="6b0c-dbca-afd2-7a45" primary="false"/>
              </categoryLinks>
              <costs>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="f324-d908-797f-872a" name="Miyazaki" hidden="false" collective="false" import="true" type="upgrade">
              <categoryLinks>
                <categoryLink id="8063-87a9-9efa-ef45" name="New CategoryLink" hidden="false" targetId="6b0c-dbca-afd2-7a45" primary="false"/>
              </categoryLinks>
              <costs>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="2a2d-ea1c-ee35-aa8e" name="Idris" hidden="false" collective="false" import="true" type="upgrade">
              <categoryLinks>
                <categoryLink id="e423-83d3-9f98-73bf" name="New CategoryLink" hidden="false" targetId="6b0c-dbca-afd2-7a45" primary="false"/>
              </categoryLinks>
              <costs>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="1ee0-a644-dcdd-2ec2" name="Slime" hidden="false" collective="false" import="true" type="upgrade">
              <categoryLinks>
                <categoryLink id="032e-1bf2-2ecf-57ae" name="New CategoryLink" hidden="false" targetId="6b0c-dbca-afd2-7a45" primary="false"/>
              </categoryLinks>
              <costs>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="ff0d-40bb-7461-43f8" name="Warden Cadella" hidden="false" collective="false" import="true" type="upgrade">
              <categoryLinks>
                <categoryLink id="cb92-d97d-d99b-b656" name="New CategoryLink" hidden="false" targetId="6b0c-dbca-afd2-7a45" primary="false"/>
              </categoryLinks>
              <costs>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="d82a-5237-2a8f-2af9" name="Scarlett Annie" hidden="false" collective="false" import="true" type="upgrade">
              <rules>
                <rule id="fa31-44e3-c63b-671e" name="Crew Quarters" publicationId="55c7-45e5-pubEL3DK" page="97" hidden="false">
                  <description>This team may purchase the Extra Crewmember upgrade at half the listed cost.</description>
                </rule>
                <rule id="759c-064c-6938-220e" name="Raiders" publicationId="55c7-45e5-pubEL3DK" page="97" hidden="false">
                  <description>At the end of the Attack Step, this vehicle may permanently reduce its Crew Value by any number, to a minimum of 0 crew. Remove 1 Hull Point from any vehicle in base contact for each crew removed in this way.</description>
                </rule>
                <rule id="a1ef-8cca-985b-b5d2" name="Raise the Sails" publicationId="55c7-45e5-pubEL3DK" page="97" hidden="false">
                  <description>After rolling Skid Dice, this vehicle may permanently reduce its Crew Value by 1,  to a minimum of 0 crew to add 1 free Shift result to the Skid Dice result.</description>
                </rule>
                <rule id="f3c9-9978-8d57-493b" name="Press Gang or Keelhaul" publicationId="55c7-45e5-pubEL3DK" page="97" hidden="false">
                  <description>When another vehicle in contact with this vehicle is Wrecked, this vehicle may either gain 1 crew or gain 2 Audience Votes.</description>
                </rule>
              </rules>
              <categoryLinks>
                <categoryLink id="7712-99c1-1ef8-c84e" name="Sponsor" hidden="false" targetId="6b0c-dbca-afd2-7a45" primary="false"/>
              </categoryLinks>
              <costs>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="dedc-2c1b-1abe-00e2" name="Highway Patrol" hidden="false" collective="false" import="true" type="upgrade">
              <categoryLinks>
                <categoryLink id="f1bd-9651-05cf-2e2d" name="Sponsor" hidden="false" targetId="6b0c-dbca-afd2-7a45" primary="false"/>
              </categoryLinks>
              <costs>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="f2ee-b094-5883-c9ee" name="Custom" hidden="false" collective="false" import="true" type="upgrade">
              <selectionEntryGroups>
                <selectionEntryGroup id="a40a-1747-b018-3136" name="Perks" hidden="false" collective="false" import="true">
                  <constraints>
                    <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="2997-6b0c-0076-d6e9" type="max"/>
                    <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="ddd9-31b2-003c-4c02" type="min"/>
                  </constraints>
                  <selectionEntries>
                    <selectionEntry id="135b-c980-8b7e-cc9f" name="Badass" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="a274-d286-b087-6f4b" type="max"/>
                      </constraints>
                      <costs>
                        <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
                        <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
                      </costs>
                    </selectionEntry>
                    <selectionEntry id="c626-3c9e-3d9b-6c75" name="Aggression" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="bc0f-6679-28f5-016a" type="max"/>
                      </constraints>
                      <costs>
                        <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
                        <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
                      </costs>
                    </selectionEntry>
                    <selectionEntry id="b9aa-5dc0-e208-5831" name="Daring" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="db5f-69c0-ac63-a7b3" type="max"/>
                      </constraints>
                      <costs>
                        <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
                        <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
                      </costs>
                    </selectionEntry>
                    <selectionEntry id="c1a0-8430-610a-8a83" name="Military" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="1541-f5cd-4d7e-3b68" type="max"/>
                      </constraints>
                      <costs>
                        <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
                        <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
                      </costs>
                    </selectionEntry>
                    <selectionEntry id="a1c8-2e30-e885-9a9f" name="Speed" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="8d35-d496-f981-906c" type="max"/>
                      </constraints>
                      <costs>
                        <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
                        <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
                      </costs>
                    </selectionEntry>
                    <selectionEntry id="6c3c-c635-28b4-e819" name="Pursuit" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="b809-32ef-4e2d-b54f" type="max"/>
                      </constraints>
                      <costs>
                        <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
                        <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
                      </costs>
                    </selectionEntry>
                    <selectionEntry id="1d46-f710-a188-9813" name="Precision" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="6df1-54b4-d2e7-b218" type="max"/>
                      </constraints>
                      <costs>
                        <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
                        <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
                      </costs>
                    </selectionEntry>
                    <selectionEntry id="c7a7-6f7e-bf77-e964" name="Tuning" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="55a4-8477-e706-8f35" type="max"/>
                      </constraints>
                      <costs>
                        <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
                        <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
                      </costs>
                    </selectionEntry>
                    <selectionEntry id="9c5d-00ed-e27f-d508" name="Technology" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="b928-11df-a83b-2ace" type="max"/>
                      </constraints>
                      <costs>
                        <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
                        <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
                      </costs>
                    </selectionEntry>
                    <selectionEntry id="cf8a-826b-226d-1fd8" name="Built" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="2448-a4cd-5cea-da7b" type="max"/>
                      </constraints>
                      <costs>
                        <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
                        <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
                      </costs>
                    </selectionEntry>
                    <selectionEntry id="d00d-1bdb-e267-7444" name="Horror" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="44ad-e316-b218-a23b" type="max"/>
                      </constraints>
                      <costs>
                        <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
                        <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
                      </costs>
                    </selectionEntry>
                    <selectionEntry id="40c1-a8cc-45ec-98d9" name="Reckless" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="6c15-372b-551d-293d" type="max"/>
                      </constraints>
                      <costs>
                        <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
                        <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
                      </costs>
                    </selectionEntry>
                  </selectionEntries>
                </selectionEntryGroup>
              </selectionEntryGroups>
              <costs>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="29ac-7abc-8785-5e73" name="Maxxine" hidden="false" collective="false" import="true" type="upgrade">
              <costs>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="549b-c1e3-0c08-8654" name="Verney" hidden="false" collective="false" import="true" type="upgrade">
              <costs>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="01e1-c249-57e0-1fde" name="New SelectionEntry" hidden="false" collective="false" import="true" type="upgrade">
              <costs>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="817e-017b-ec86-84e7" name="The Order of the Inferno" hidden="false" collective="false" import="true" type="upgrade">
              <costs>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="f9b4-d106-e12a-fb01" name="Beverly, The Devil on the Highway" hidden="false" collective="false" import="true" type="upgrade">
              <costs>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="e91f-341e-63b4-6539" name="Rusty&apos;s Bootleggers" hidden="false" collective="false" import="true" type="upgrade">
              <costs>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
              </costs>
            </selectionEntry>
          </selectionEntries>
        </selectionEntryGroup>
      </selectionEntryGroups>
      <costs>
        <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
        <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="1ef7-5239-685e-10a7" name="Heavy Truck" hidden="false" collective="false" import="true" type="model">
      <modifiers>
        <modifier type="set" field="hidden" value="true">
          <conditionGroups>
            <conditionGroup type="or">
              <conditions>
                <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="f324-d908-797f-872a" type="equalTo"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
      </modifiers>
      <profiles>
        <profile id="4736-77ae-0c18-656c" name="Heavy Truck" hidden="false" typeId="e5e1-86e0-5830-ebf3" typeName="Vehicle">
          <modifiers>
            <modifier type="increment" field="a05d-324a-bd1a-767e" value="2">
              <repeats>
                <repeat field="selections" scope="1ef7-5239-685e-10a7" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="89d7-ec4b-86b1-20fc" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
            <modifier type="increment" field="4fe3-cc78-baa4-a7ad" value="1">
              <repeats>
                <repeat field="selections" scope="1ef7-5239-685e-10a7" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="528f-f0b3-bb2b-8a6a" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
            <modifier type="increment" field="a05d-324a-bd1a-767e" value="2">
              <repeats>
                <repeat field="selections" scope="1ef7-5239-685e-10a7" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="119d-9a90-a1f5-6fe1" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
          </modifiers>
          <modifierGroups>
            <modifierGroup>
              <repeats>
                <repeat field="selections" scope="1ef7-5239-685e-10a7" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="31f8-993a-622a-e07c" repeats="1" roundUp="false"/>
              </repeats>
              <modifiers>
                <modifier type="increment" field="6748-870d-e310-84fa" value="1"/>
                <modifier type="decrement" field="3c64-20de-b449-9e2a" value="1"/>
              </modifiers>
            </modifierGroup>
          </modifierGroups>
          <characteristics>
            <characteristic name="Weight" typeId="4efa-dfe3-7fb1-23fa">Heavyweight</characteristic>
            <characteristic name="Hull Points" typeId="a05d-324a-bd1a-767e">14</characteristic>
            <characteristic name="Handling" typeId="6748-870d-e310-84fa">2</characteristic>
            <characteristic name="Max Gear" typeId="3c64-20de-b449-9e2a">3</characteristic>
            <characteristic name="Crew" typeId="4fe3-cc78-baa4-a7ad">4</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <categoryLinks>
        <categoryLink id="c627-77e0-8e59-96d9" name="New CategoryLink" hidden="false" targetId="fcb8-8c55-ab34-03d1" primary="true"/>
        <categoryLink id="8cdc-99d4-ffbc-c207" name="Heavyweight" hidden="false" targetId="3e72-1039-e998-bd5a" primary="false"/>
      </categoryLinks>
      <entryLinks>
        <entryLink id="0879-77ca-7b96-2770" name="Options" hidden="false" collective="false" import="true" targetId="5707-6abb-7abe-9612" type="selectionEntryGroup">
          <modifiers>
            <modifier type="set" field="0a0d-4ca7-dc7b-eb21" value="5"/>
            <modifier type="increment" field="0a0d-4ca7-dc7b-eb21" value="1.0">
              <conditions>
                <condition field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="e44a-e5fc-d07b-86c5" type="equalTo"/>
              </conditions>
            </modifier>
            <modifier type="increment" field="0a0d-4ca7-dc7b-eb21" value="3.0">
              <conditions>
                <condition field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="36d8-6a63-8ac4-d919" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
        </entryLink>
        <entryLink id="766e-4010-0580-322d" name="Driver Perks" hidden="false" collective="false" import="true" targetId="efd0-4e11-81a4-f448" type="selectionEntryGroup"/>
      </entryLinks>
      <costs>
        <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="25.0"/>
        <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="8847-cf34-415b-e9e0" name="Drag Racer" hidden="false" collective="false" import="true" type="model">
      <modifiers>
        <modifier type="set" field="hidden" value="true">
          <conditionGroups>
            <conditionGroup type="or">
              <conditions>
                <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="6544-f65b-4420-3486" type="equalTo"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
      </modifiers>
      <profiles>
        <profile id="cbb3-313a-089c-1e6f" name="Drag Racer" hidden="false" typeId="e5e1-86e0-5830-ebf3" typeName="Vehicle">
          <modifiers>
            <modifier type="increment" field="a05d-324a-bd1a-767e" value="2">
              <repeats>
                <repeat field="selections" scope="8847-cf34-415b-e9e0" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="89d7-ec4b-86b1-20fc" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
            <modifier type="increment" field="4fe3-cc78-baa4-a7ad" value="1">
              <repeats>
                <repeat field="selections" scope="8847-cf34-415b-e9e0" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="528f-f0b3-bb2b-8a6a" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
            <modifier type="increment" field="a05d-324a-bd1a-767e" value="2">
              <repeats>
                <repeat field="selections" scope="8847-cf34-415b-e9e0" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="119d-9a90-a1f5-6fe1" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
          </modifiers>
          <modifierGroups>
            <modifierGroup>
              <repeats>
                <repeat field="selections" scope="8847-cf34-415b-e9e0" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="31f8-993a-622a-e07c" repeats="1" roundUp="false"/>
              </repeats>
              <modifiers>
                <modifier type="increment" field="6748-870d-e310-84fa" value="1"/>
                <modifier type="decrement" field="3c64-20de-b449-9e2a" value="1"/>
              </modifiers>
            </modifierGroup>
          </modifierGroups>
          <characteristics>
            <characteristic name="Weight" typeId="4efa-dfe3-7fb1-23fa">Lightweight</characteristic>
            <characteristic name="Hull Points" typeId="a05d-324a-bd1a-767e">4</characteristic>
            <characteristic name="Handling" typeId="6748-870d-e310-84fa">4</characteristic>
            <characteristic name="Max Gear" typeId="3c64-20de-b449-9e2a">6</characteristic>
            <characteristic name="Crew" typeId="4fe3-cc78-baa4-a7ad">1</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <rules>
        <rule id="504a-62ab-96a8-4598" name="Jet Engine" publicationId="55c7-45e5-pubEL3DK" page="70" hidden="false">
          <description>A vehicle with a jet engine count as having a Nitro Booster with infinite ammo tokens.  This means  this vehicle automatically Explodes when it is Wrecked.  A vehicle wiht a jet engine must use Nitro Booster every time it activates.</description>
        </rule>
      </rules>
      <categoryLinks>
        <categoryLink id="2357-f629-c72d-de69" name="New CategoryLink" hidden="false" targetId="fcb8-8c55-ab34-03d1" primary="true"/>
        <categoryLink id="9b71-ec03-76cb-0286" name="Lightweight" hidden="false" targetId="d4f7-0b52-6568-ee8f" primary="false"/>
      </categoryLinks>
      <entryLinks>
        <entryLink id="981a-f446-57e2-dc62" name="Options" hidden="false" collective="false" import="true" targetId="5707-6abb-7abe-9612" type="selectionEntryGroup">
          <modifiers>
            <modifier type="set" field="0a0d-4ca7-dc7b-eb21" value="2.0"/>
          </modifiers>
          <entryLinks>
            <entryLink id="0c2e-9395-6ce6-f113" name="Driver Perks" hidden="false" collective="false" import="true" targetId="efd0-4e11-81a4-f448" type="selectionEntryGroup"/>
          </entryLinks>
        </entryLink>
      </entryLinks>
      <costs>
        <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="5.0"/>
        <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="e963-efe5-63a4-a278" name="Bike with Sidecar" hidden="false" collective="false" import="true" type="model">
      <modifiers>
        <modifier type="set" field="hidden" value="true">
          <conditionGroups>
            <conditionGroup type="or">
              <conditions>
                <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="6544-f65b-4420-3486" type="equalTo"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
      </modifiers>
      <profiles>
        <profile id="334c-8836-2795-9024" name="Bike with Sidecar" publicationId="55c7-45e5-pubEL3DK" page="68" hidden="false" typeId="e5e1-86e0-5830-ebf3" typeName="Vehicle">
          <modifiers>
            <modifier type="increment" field="a05d-324a-bd1a-767e" value="2">
              <repeats>
                <repeat field="selections" scope="e963-efe5-63a4-a278" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="true" childId="89d7-ec4b-86b1-20fc" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
            <modifier type="increment" field="3c64-20de-b449-9e2a" value="2">
              <conditions>
                <condition field="selections" scope="parent" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="67db-8127-a7c6-429c" type="instanceOf"/>
              </conditions>
            </modifier>
            <modifier type="increment" field="4fe3-cc78-baa4-a7ad" value="1">
              <repeats>
                <repeat field="selections" scope="e963-efe5-63a4-a278" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="528f-f0b3-bb2b-8a6a" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
            <modifier type="increment" field="a05d-324a-bd1a-767e" value="2">
              <repeats>
                <repeat field="selections" scope="e963-efe5-63a4-a278" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="119d-9a90-a1f5-6fe1" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
          </modifiers>
          <modifierGroups>
            <modifierGroup>
              <repeats>
                <repeat field="selections" scope="e963-efe5-63a4-a278" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="31f8-993a-622a-e07c" repeats="1" roundUp="false"/>
              </repeats>
              <modifiers>
                <modifier type="increment" field="6748-870d-e310-84fa" value="1"/>
                <modifier type="decrement" field="3c64-20de-b449-9e2a" value="1"/>
              </modifiers>
            </modifierGroup>
          </modifierGroups>
          <characteristics>
            <characteristic name="Weight" typeId="4efa-dfe3-7fb1-23fa">Lightweight</characteristic>
            <characteristic name="Hull Points" typeId="a05d-324a-bd1a-767e">4</characteristic>
            <characteristic name="Handling" typeId="6748-870d-e310-84fa">5</characteristic>
            <characteristic name="Max Gear" typeId="3c64-20de-b449-9e2a">6</characteristic>
            <characteristic name="Crew" typeId="4fe3-cc78-baa4-a7ad">2</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <rules>
        <rule id="1866-e636-8f90-542e" name="Full Throttle" publicationId="55c7-45e5-pubEL3DK" page="69" hidden="false">
          <description>This vehicle considers the Long Straight movement template to be permitted in any Gear. The Long Straight is not considered either Hazardous or Trivial in any Gear.</description>
        </rule>
        <rule id="9117-707c-d372-5f01" name="Pivot" publicationId="55c7-45e5-pubEL3DK" page="69" hidden="false">
          <description>At the start of this vehicle&apos;s activation, if this vehicle&apos;s current Gear is 1, this vehicle may make a pivot about its centre to face any direction. This pivot cannot cause a Collision and cannot leave this vehicle touching an obstruction.</description>
        </rule>
      </rules>
      <categoryLinks>
        <categoryLink id="ddf3-3885-31c5-aa22" name="New CategoryLink" hidden="false" targetId="fcb8-8c55-ab34-03d1" primary="true"/>
        <categoryLink id="5d3b-c501-17ba-eb81" name="Lightweight" hidden="false" targetId="d4f7-0b52-6568-ee8f" primary="false"/>
      </categoryLinks>
      <entryLinks>
        <entryLink id="0970-ef37-2c4d-85e1" name="Options" hidden="false" collective="false" import="true" targetId="5707-6abb-7abe-9612" type="selectionEntryGroup">
          <modifiers>
            <modifier type="set" field="0a0d-4ca7-dc7b-eb21" value="2.0"/>
          </modifiers>
        </entryLink>
        <entryLink id="d4a9-ef8e-2882-0dfd" name="Driver Perks" hidden="false" collective="false" import="true" targetId="efd0-4e11-81a4-f448" type="selectionEntryGroup"/>
      </entryLinks>
      <costs>
        <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="8.0"/>
        <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="6682-7091-0233-0818" name="Ice Cream Truck" hidden="false" collective="false" import="true" type="model">
      <modifiers>
        <modifier type="set" field="91a9-beed-6d55-d7ea" value="5.0">
          <conditions>
            <condition field="selections" scope="6682-7091-0233-0818" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="9616-1553-edcf-11ad" type="equalTo"/>
          </conditions>
        </modifier>
      </modifiers>
      <profiles>
        <profile id="4254-127b-1927-240c" name="Ice Cream Truck" publicationId="55c7-45e5-pubEL3DK" page="68" hidden="false" typeId="e5e1-86e0-5830-ebf3" typeName="Vehicle">
          <modifiers>
            <modifier type="decrement" field="a05d-324a-bd1a-767e" value="2">
              <conditions>
                <condition field="selections" scope="6682-7091-0233-0818" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="9616-1553-edcf-11ad" type="equalTo"/>
              </conditions>
            </modifier>
            <modifier type="increment" field="a05d-324a-bd1a-767e" value="2">
              <repeats>
                <repeat field="selections" scope="6682-7091-0233-0818" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="89d7-ec4b-86b1-20fc" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
            <modifier type="increment" field="4fe3-cc78-baa4-a7ad" value="1">
              <repeats>
                <repeat field="selections" scope="6682-7091-0233-0818" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="528f-f0b3-bb2b-8a6a" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
            <modifier type="increment" field="a05d-324a-bd1a-767e" value="2">
              <repeats>
                <repeat field="selections" scope="6682-7091-0233-0818" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="119d-9a90-a1f5-6fe1" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
          </modifiers>
          <modifierGroups>
            <modifierGroup>
              <repeats>
                <repeat field="selections" scope="6682-7091-0233-0818" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="31f8-993a-622a-e07c" repeats="1" roundUp="false"/>
              </repeats>
              <modifiers>
                <modifier type="increment" field="6748-870d-e310-84fa" value="1"/>
                <modifier type="decrement" field="3c64-20de-b449-9e2a" value="1"/>
              </modifiers>
            </modifierGroup>
          </modifierGroups>
          <characteristics>
            <characteristic name="Weight" typeId="4efa-dfe3-7fb1-23fa">Middleweight</characteristic>
            <characteristic name="Hull Points" typeId="a05d-324a-bd1a-767e">10</characteristic>
            <characteristic name="Handling" typeId="6748-870d-e310-84fa">2</characteristic>
            <characteristic name="Max Gear" typeId="3c64-20de-b449-9e2a">4</characteristic>
            <characteristic name="Crew" typeId="4fe3-cc78-baa4-a7ad">2</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <rules>
        <rule id="0046-e3fe-154c-326c" name="Infuriating Jingle" publicationId="55c7-45e5-pubEL3DK" page="70" hidden="false">
          <description>Vehicles that target this vehicle with a Smash Attack during a Collision gain no Hazard Tokens during step 6 of the Collision resolution.</description>
        </rule>
      </rules>
      <categoryLinks>
        <categoryLink id="8b84-bb21-dbb6-26a7" name="New CategoryLink" hidden="false" targetId="fcb8-8c55-ab34-03d1" primary="true"/>
        <categoryLink id="3453-bc98-4232-84cd" name="Middleweight" hidden="false" targetId="96a0-cfb4-47ee-0a2f" primary="false"/>
      </categoryLinks>
      <entryLinks>
        <entryLink id="8f46-74bc-6d0a-2264" name="Options" hidden="false" collective="false" import="true" targetId="5707-6abb-7abe-9612" type="selectionEntryGroup">
          <modifiers>
            <modifier type="set" field="0a0d-4ca7-dc7b-eb21" value="3.0"/>
            <modifier type="increment" field="0a0d-4ca7-dc7b-eb21" value="1.0">
              <conditions>
                <condition field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="e44a-e5fc-d07b-86c5" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
        </entryLink>
        <entryLink id="8688-89bd-858a-94f4" name="Driver Perks" hidden="false" collective="false" import="true" targetId="efd0-4e11-81a4-f448" type="selectionEntryGroup"/>
      </entryLinks>
      <costs>
        <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="8.0"/>
        <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="8f6d-bc80-86c2-2114" name="Ambulance" hidden="false" collective="false" import="true" type="model">
      <modifiers>
        <modifier type="decrement" field="91a9-beed-6d55-d7ea" value="4.0">
          <conditions>
            <condition field="selections" scope="8f6d-bc80-86c2-2114" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="9616-1553-edcf-11ad" type="equalTo"/>
          </conditions>
        </modifier>
        <modifier type="set" field="hidden" value="true">
          <conditionGroups>
            <conditionGroup type="or">
              <conditions>
                <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="f324-d908-797f-872a" type="equalTo"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
      </modifiers>
      <profiles>
        <profile id="ac1e-9341-ccfd-bad1" name="Ambulance" hidden="false" typeId="e5e1-86e0-5830-ebf3" typeName="Vehicle">
          <modifiers>
            <modifier type="decrement" field="a05d-324a-bd1a-767e" value="2">
              <conditions>
                <condition field="selections" scope="8f6d-bc80-86c2-2114" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="9616-1553-edcf-11ad" type="equalTo"/>
              </conditions>
            </modifier>
            <modifier type="increment" field="a05d-324a-bd1a-767e" value="2">
              <repeats>
                <repeat field="selections" scope="8f6d-bc80-86c2-2114" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="89d7-ec4b-86b1-20fc" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
            <modifier type="increment" field="4fe3-cc78-baa4-a7ad" value="1">
              <repeats>
                <repeat field="selections" scope="8f6d-bc80-86c2-2114" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="528f-f0b3-bb2b-8a6a" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
            <modifier type="increment" field="a05d-324a-bd1a-767e" value="2">
              <repeats>
                <repeat field="selections" scope="8f6d-bc80-86c2-2114" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="119d-9a90-a1f5-6fe1" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
          </modifiers>
          <modifierGroups>
            <modifierGroup>
              <repeats>
                <repeat field="selections" scope="8f6d-bc80-86c2-2114" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="31f8-993a-622a-e07c" repeats="1" roundUp="false"/>
              </repeats>
              <modifiers>
                <modifier type="increment" field="6748-870d-e310-84fa" value="1"/>
                <modifier type="decrement" field="3c64-20de-b449-9e2a" value="1"/>
              </modifiers>
            </modifierGroup>
          </modifierGroups>
          <characteristics>
            <characteristic name="Weight" typeId="4efa-dfe3-7fb1-23fa">Middleweight</characteristic>
            <characteristic name="Hull Points" typeId="a05d-324a-bd1a-767e">12</characteristic>
            <characteristic name="Handling" typeId="6748-870d-e310-84fa">2</characteristic>
            <characteristic name="Max Gear" typeId="3c64-20de-b449-9e2a">5</characteristic>
            <characteristic name="Crew" typeId="4fe3-cc78-baa4-a7ad">3</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <rules>
        <rule id="5e30-84e9-0704-622b" name="Uppers" publicationId="55c7-45e5-pubEL3DK" page="69" hidden="false">
          <description>If this vehicle is involved in a Collision in which both vehicles declare an Evade, both vehicles must declare a single change Gear up immediately after the Collision is resolved (gaining a Hazard Token as normal). If either vehicle is already at its max Gear, the change of Gear does not affect that vehicle&apos;s current Gear, but that vehicle does gain a Hazard Token.</description>
        </rule>
        <rule id="0e45-e994-2fcb-1a23" name="Downers" publicationId="55c7-45e5-pubEL3DK" page="69" hidden="false">
          <description>When this vehicle is involved in a Collision during its activation in which it declares a Smash Attack, the target vehicle does not gain any Hazard Tokens from the Collision and instead discards 2 Hazard Tokens. Then reduce the target vehicle&apos;s Crew Value by 1 until the end of the Gear Phase.</description>
        </rule>
      </rules>
      <categoryLinks>
        <categoryLink id="635a-7f0c-a224-80d7" name="New CategoryLink" hidden="false" targetId="fcb8-8c55-ab34-03d1" primary="true"/>
        <categoryLink id="ce55-954c-99dc-eca9" name="Middleweight" hidden="false" targetId="96a0-cfb4-47ee-0a2f" primary="false"/>
      </categoryLinks>
      <entryLinks>
        <entryLink id="d2d0-409b-7b59-a8ae" name="Options" hidden="false" collective="false" import="true" targetId="5707-6abb-7abe-9612" type="selectionEntryGroup">
          <modifiers>
            <modifier type="set" field="0a0d-4ca7-dc7b-eb21" value="3"/>
            <modifier type="increment" field="0a0d-4ca7-dc7b-eb21" value="1.0">
              <conditions>
                <condition field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="e44a-e5fc-d07b-86c5" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
        </entryLink>
        <entryLink id="b9ba-23ae-25c2-9f22" name="Driver Perks" hidden="false" collective="false" import="true" targetId="efd0-4e11-81a4-f448" type="selectionEntryGroup"/>
      </entryLinks>
      <costs>
        <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="20.0"/>
        <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
      </costs>
    </selectionEntry>
  </sharedSelectionEntries>
  <sharedSelectionEntryGroups>
    <selectionEntryGroup id="5707-6abb-7abe-9612" name="Options" hidden="false" collective="false" import="true">
      <constraints>
        <constraint field="ba54-acdf-648d-86c5" scope="parent" value="-1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="0a0d-4ca7-dc7b-eb21" type="max"/>
      </constraints>
      <selectionEntryGroups>
        <selectionEntryGroup id="6998-8ee1-9654-8903" name="Upgrades" hidden="false" collective="false" import="true">
          <selectionEntries>
            <selectionEntry id="3d84-2875-5485-522a" name="Nitro Booster" hidden="false" collective="false" import="true" type="upgrade">
              <modifiers>
                <modifier type="set" field="91a9-beed-6d55-d7ea" value="3.0">
                  <conditions>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="2a2d-ea1c-ee35-aa8e" type="equalTo"/>
                  </conditions>
                </modifier>
                <modifier type="set" field="db34-71a6-0e59-fc35" value="1.0">
                  <conditions>
                    <condition field="selections" scope="parent" value="0.0" percentValue="false" shared="false" includeChildSelections="false" includeChildForces="false" childId="8847-cf34-415b-e9e0" type="instanceOf"/>
                  </conditions>
                </modifier>
                <modifier type="decrement" field="91a9-beed-6d55-d7ea" value="6.0">
                  <conditions>
                    <condition field="selections" scope="parent" value="0.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="8847-cf34-415b-e9e0" type="equalTo"/>
                  </conditions>
                </modifier>
              </modifiers>
              <constraints>
                <constraint field="selections" scope="parent" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="db34-71a6-0e59-fc35" type="min"/>
              </constraints>
              <profiles>
                <profile id="ad1d-9691-8213-39be" name="Nitro Booster" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
                  <characteristics>
                    <characteristic name="Type" typeId="69fc-8560-0644-48e2"/>
                    <characteristic name="Attack" typeId="c3db-f302-e618-7458"/>
                    <characteristic name="Range" typeId="7de6-2500-ebda-e68b"/>
                    <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d"/>
                    <characteristic name="Ammo" typeId="5779-672e-d159-0983">1</characteristic>
                  </characteristics>
                </profile>
              </profiles>
              <rules>
                <rule id="58d3-4f69-ff14-916b" name="Nitro Booster" publicationId="55c7-45e5-pubEL3DK" page="84" hidden="false">
                  <description>Once per activation, at the start of a Movement Step, this vehicle may declare that it is using a Nitro Booster. If it does, this vehicle makes an immediate forced, Long Straight move forward, and then gains Hazard Tokens until it has 5 Hazard Tokens. It then resolves its Movement Step as normal, except that the vhicle may not reverse. At the end of a Movement Step in which this vehicle used Nitro Booster, it gains Hazard Tokens until it has 5 Hazard Tokens.</description>
                </rule>
              </rules>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="6.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="528f-f0b3-bb2b-8a6a" name="Extra Crewmember" hidden="false" collective="false" import="true" type="upgrade">
              <modifiers>
                <modifier type="set" field="91a9-beed-6d55-d7ea" value="2">
                  <conditions>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="d82a-5237-2a8f-2af9" type="equalTo"/>
                  </conditions>
                </modifier>
              </modifiers>
              <profiles>
                <profile id="70c5-f9e8-ac79-796a" name="Extra Crewmember" hidden="false" typeId="deb3-2bac-5018-200f" typeName="Upgrade">
                  <characteristics>
                    <characteristic name="Build Slots" typeId="2a59-5864-b3f9-0c30"/>
                    <characteristic name="Special Rules" typeId="5304-47e4-12bd-5efe">+1 crew up to a maximum of twice the vehicle&apos;s starting Crew Value</characteristic>
                  </characteristics>
                </profile>
              </profiles>
              <rules>
                <rule id="c97e-45ee-ce31-6ffa" name="Extra Crewmember" publicationId="55c7-45e5-pubEL3DK" page="84" hidden="false">
                  <description>Each extra Crewmember purchased increases the vehicles Crew Value by 1. This will increase the number of attacks a vehicle can make in its Attack Step. See Shooting Attacks (page 30).
A vehicle may not purchase more Extra Crewmembers than its starting Crew Value.</description>
                </rule>
              </rules>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="4.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="89d7-ec4b-86b1-20fc" name="Armour Plating" hidden="false" collective="false" import="true" type="upgrade">
              <costs>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="1.0"/>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="4.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="31f8-993a-622a-e07c" name="Tank Tracks" publicationId="55c7-45e5-pubEL3DK" page="83" hidden="false" collective="false" import="true" type="upgrade">
              <modifiers>
                <modifier type="set" field="hidden" value="true">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition field="selections" scope="ancestor" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="5c3b-7e88-5b9a-51cd" type="instanceOf"/>
                        <condition field="selections" scope="ancestor" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="93be-e146-d79b-13d6" type="instanceOf"/>
                        <condition field="selections" scope="ancestor" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="f964-c263-ff17-1fc5" type="instanceOf"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
              </modifiers>
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="7bdc-c2aa-edf1-be6a" type="max"/>
              </constraints>
              <profiles>
                <profile id="f1c0-eb32-312d-b24c" name="Tank Tracks" hidden="false" typeId="deb3-2bac-5018-200f" typeName="Upgrade">
                  <characteristics>
                    <characteristic name="Build Slots" typeId="2a59-5864-b3f9-0c30"/>
                    <characteristic name="Special Rules" typeId="5304-47e4-12bd-5efe"/>
                  </characteristics>
                </profile>
              </profiles>
              <rules>
                <rule id="a39c-5c3c-4d21-ad64" name="Tank Tracks" publicationId="55c7-45e5-pubEL3DK" page="85" hidden="false">
                  <description>This vehicle with Tank Tracks has had its wheels replaced with caterpillar tracks. This increases its handling by 1, but reduces its max Gear by 1. This vehicle may also ignore rough and treacherous surfaces.</description>
                </rule>
              </rules>
              <costs>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="1.0"/>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="4.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="abea-8bf8-fcfb-b8a1" name="Improved Sludge Thrower" hidden="false" collective="false" import="true" type="upgrade">
              <profiles>
                <profile id="f29c-a2d5-527d-10a5" name="Improved Sludge Thrower" publicationId="55c7-45e5-pubEL3DK" page="83" hidden="false" typeId="deb3-2bac-5018-200f" typeName="Upgrade">
                  <characteristics>
                    <characteristic name="Build Slots" typeId="2a59-5864-b3f9-0c30"/>
                    <characteristic name="Special Rules" typeId="5304-47e4-12bd-5efe"/>
                  </characteristics>
                </profile>
              </profiles>
              <rules>
                <rule id="4592-3793-771f-6614" name="Improved Sludge Thrower" publicationId="55c7-45e5-pubEL3DK" page="84" hidden="false">
                  <description>This vehicle may place the Burst templates for its dropped weapons anywhere that is at least partially within Medium range and 360-degree Arc of Fire of this vehicle.</description>
                </rule>
              </rules>
              <costs>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="1.0"/>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="2.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="9616-1553-edcf-11ad" name="Prison Car" hidden="true" collective="false" import="true" type="upgrade">
              <modifiers>
                <modifier type="set" field="hidden" value="false">
                  <conditionGroups>
                    <conditionGroup type="and">
                      <conditions>
                        <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="ff0d-40bb-7461-43f8" type="equalTo"/>
                      </conditions>
                      <conditionGroups>
                        <conditionGroup type="or">
                          <conditions>
                            <condition field="selections" scope="ancestor" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="5fc8-4273-0b18-c611" type="instanceOf"/>
                            <condition field="selections" scope="ancestor" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="c4d1-c411-d2c4-c182" type="instanceOf"/>
                            <condition field="selections" scope="ancestor" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="de6f-4971-d7ee-d6ea" type="instanceOf"/>
                          </conditions>
                        </conditionGroup>
                      </conditionGroups>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
              </modifiers>
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="fd31-f939-4841-82ca" type="max"/>
              </constraints>
              <costs>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="67db-8127-a7c6-429c" name="Experimental Nuclear Engine" hidden="false" collective="false" import="true" type="upgrade">
              <modifiers>
                <modifier type="set" field="hidden" value="true">
                  <conditions>
                    <condition field="selections" scope="roster" value="0.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="3057-1f8e-63b6-95e6" type="equalTo"/>
                  </conditions>
                </modifier>
              </modifiers>
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="b4cc-dc96-4d77-46b0" type="max"/>
              </constraints>
              <profiles>
                <profile id="f8d3-4b37-458c-35a9" name="Experimental Nuclear Engine" publicationId="55c7-45e5-pubEL3DK" page="83" hidden="false" typeId="deb3-2bac-5018-200f" typeName="Upgrade">
                  <characteristics>
                    <characteristic name="Build Slots" typeId="2a59-5864-b3f9-0c30"/>
                    <characteristic name="Special Rules" typeId="5304-47e4-12bd-5efe"/>
                  </characteristics>
                </profile>
              </profiles>
              <rules>
                <rule id="2970-448d-c771-062d" name="Experimental Nuclear Engine" publicationId="55c7-45e5-pubEL3DK" page="83" hidden="false">
                  <description>Mishkin-sponsored teams only.  This upgrade may not be purchased for lightweight vehicles. A vehicle may only purchase this upgrade once.
Add 2 to this vehicle&apos;s max Gear, (up to a maximum of 6). This vehicle considers the Long Straight movement to be permitted in any Gear. The Long Straight is not considered either Hazardous or Trivial in any Gear. 
If this vehicle ever fails a Flip Check, it is immediately Wrecked and automatically Explodes. When this vehicle Explodes, it counts as Heavyweight.</description>
                </rule>
              </rules>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="5.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="0925-cc18-b8da-5623" name="Experimental Teleporter" hidden="false" collective="false" import="true" type="upgrade">
              <modifiers>
                <modifier type="set" field="hidden" value="true">
                  <conditions>
                    <condition field="selections" scope="roster" value="0.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="3057-1f8e-63b6-95e6" type="equalTo"/>
                  </conditions>
                </modifier>
              </modifiers>
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="33df-54ec-0c3f-524f" type="max"/>
              </constraints>
              <profiles>
                <profile id="42ac-ec75-9538-fc8c" name="Experimental Teleporter" publicationId="55c7-45e5-pubEL3DK" page="83" hidden="false" typeId="deb3-2bac-5018-200f" typeName="Upgrade">
                  <characteristics>
                    <characteristic name="Build Slots" typeId="2a59-5864-b3f9-0c30"/>
                    <characteristic name="Special Rules" typeId="5304-47e4-12bd-5efe"/>
                  </characteristics>
                </profile>
              </profiles>
              <rules>
                <rule id="9a05-6f0a-e878-31d8" name="Experimental Teleporter" publicationId="55c7-45e5-pubEL3DK" page="83" hidden="false">
                  <description>Mishkin-Sponsored teams only. A vehicle may only purchase this upgrade once. 
At the start of this vehicle&apos;s activation this vehicle may choose to activate the Experimental Teleporter prior to (and in addition to) its normal Movement Step.
When the Experimental Teleporter is activated, this vehicle gains 3 Hazard Tokens, and then rolls a single Skid Die.
If the Skid Dice result is any result other than a Hazard, place this vehicle anywhere within Medium range of its current position, not touching an obstruction or terrain, without altering the vehicle&apos;s facing. This does not cause a Collision. This vehicle then begins its normal Movement Step from this new location.
If the Skid DIce result is a Hazard, the player to the left of the controller of the vehicle places this vehicle anywhere within Long range of its current position, not touching an obstruction or terrain, without altering its facing. This does not cause a Collision.</description>
                </rule>
              </rules>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="7.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="4a80-bb42-9564-9009" name="Roll Cage" publicationId="55c7-45e5-pubEL3DK" page="83" hidden="false" collective="false" import="true" type="upgrade">
              <profiles>
                <profile id="6cbb-cf10-695f-1b14" name="Roll Cage" hidden="false" typeId="deb3-2bac-5018-200f" typeName="Upgrade">
                  <characteristics>
                    <characteristic name="Build Slots" typeId="2a59-5864-b3f9-0c30"/>
                    <characteristic name="Special Rules" typeId="5304-47e4-12bd-5efe"/>
                  </characteristics>
                </profile>
              </profiles>
              <rules>
                <rule id="4b6f-9e8e-9a7e-63aa" name="Roll Cage" publicationId="55c7-45e5-pubEL3DK" page="85" hidden="false">
                  <description>When this vehicle suffers a Flip, this vehicle may choose to ignore the 2 hits received from the Flip.</description>
                </rule>
              </rules>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="4.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="1.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="119d-9a90-a1f5-6fe1" name="Microplate Armour" hidden="true" collective="false" import="true" type="upgrade">
              <modifiers>
                <modifier type="set" field="hidden" value="false">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="549b-c1e3-0c08-8654" type="equalTo"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
              </modifiers>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="6.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="9153-3768-2e17-d56e" name="Ram" publicationId="55c7-45e5-pubEL3DK" page="83" hidden="false" collective="false" import="true" type="upgrade">
              <modifiers>
                <modifier type="set" field="ba54-acdf-648d-86c5" value="0.0">
                  <conditions>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="1ee0-a644-dcdd-2ec2" type="equalTo"/>
                  </conditions>
                </modifier>
              </modifiers>
              <profiles>
                <profile id="bb67-4609-1a32-c127" name="Ram" hidden="false" typeId="deb3-2bac-5018-200f" typeName="Upgrade">
                  <characteristics>
                    <characteristic name="Build Slots" typeId="2a59-5864-b3f9-0c30"/>
                    <characteristic name="Special Rules" typeId="5304-47e4-12bd-5efe"/>
                  </characteristics>
                </profile>
              </profiles>
              <rules>
                <rule id="b01a-af8f-adfa-84fe" name="Ram" publicationId="55c7-45e5-pubEL3DK" page="85" hidden="false">
                  <description>The Ram can represent a ram, a bulldozer blade, a cow-catcher, a buzz saw, a wrecking ball on a chain, spiked or scythed wheels, metal spikes, or any other vicious or dangerous close combat weapon attached to the vehicle.
When purchasing this upgrade, a facing must be declared for it, as if it was a weapon. A vehicle may only purchase a single Ram on each facing.
When involved in a Collision on the declared facing, this vehicle may add 2 attack dice to its Smash Attack, and this vehicle does not gain any Hazard Tokens as a result of the Collision.</description>
                </rule>
              </rules>
              <entryLinks>
                <entryLink id="080a-0ddd-adb4-4c87" name="Mounting" hidden="false" collective="false" import="true" targetId="fa58-967b-5455-6fde" type="selectionEntryGroup"/>
              </entryLinks>
              <costs>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="1.0"/>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="4.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="2b91-33e6-8d75-f45b" name="Exploding Ram" hidden="false" collective="false" import="true" type="upgrade">
              <profiles>
                <profile id="512c-4235-eed2-5f69" name="Exploding Ram" publicationId="55c7-45e5-pubEL3DK" page="83" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
                  <characteristics>
                    <characteristic name="Type" typeId="69fc-8560-0644-48e2"/>
                    <characteristic name="Attack" typeId="c3db-f302-e618-7458"/>
                    <characteristic name="Range" typeId="7de6-2500-ebda-e68b"/>
                    <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d"/>
                    <characteristic name="Ammo" typeId="5779-672e-d159-0983">1</characteristic>
                  </characteristics>
                </profile>
              </profiles>
              <rules>
                <rule id="084f-d9e3-763b-e489" name="Exploding Ram" publicationId="55c7-45e5-pubEL3DK" page="84" hidden="false">
                  <description>The first time this vehicle is involved in a Collision on the declared facing in a game, this vehicle must declare a Smash Attack (even if the Collision is a Tailgate). During this Smash Attack this vehicle gains +6 Attack Dice. If any 1s or 2s are rolled on this vehicles attack dice during this Smash Attack, this vehicle immedately loses one hull point for each 1 or 2 rolled.
A vehicle may equip both a Ram and an Exploding Ram on the same facing, and their effects are cumulative.</description>
                </rule>
              </rules>
              <entryLinks>
                <entryLink id="897f-2e54-bda5-8750" name="Mounting" hidden="false" collective="false" import="true" targetId="fa58-967b-5455-6fde" type="selectionEntryGroup"/>
              </entryLinks>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="3.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
          </selectionEntries>
        </selectionEntryGroup>
        <selectionEntryGroup id="34ec-2b13-daeb-bb0e" name="Crew Fired Weapons" hidden="false" collective="false" import="true">
          <selectionEntries>
            <selectionEntry id="417a-733a-156b-420c" name="Grenades" hidden="false" collective="false" import="true" type="upgrade">
              <profiles>
                <profile id="8171-7b1c-3bc2-4aea" name="Grenades" publicationId="55c7-45e5-pubEL3DK" page="67" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
                  <characteristics>
                    <characteristic name="Type" typeId="69fc-8560-0644-48e2"/>
                    <characteristic name="Attack" typeId="c3db-f302-e618-7458">1d6</characteristic>
                    <characteristic name="Range" typeId="7de6-2500-ebda-e68b">Medium</characteristic>
                    <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d">Ammo 5. Crew Fired. Blast. Indirect. Blitz.</characteristic>
                    <characteristic name="Ammo" typeId="5779-672e-d159-0983"/>
                  </characteristics>
                </profile>
              </profiles>
              <infoLinks>
                <infoLink id="67b3-1a2a-f3b4-b802" name="Blast" hidden="false" targetId="05af-9c36-1963-9be4" type="rule"/>
                <infoLink id="4e1c-b060-2502-f03c" name="Blitz" hidden="false" targetId="d77d-17aa-4a42-3afb" type="rule"/>
                <infoLink id="493c-146e-f39d-7529" name="Crew Fired" hidden="false" targetId="5787-b79b-cab5-b98e" type="rule"/>
                <infoLink id="763a-fd53-d3f2-2056" name="Indirect" hidden="false" targetId="4bf2-b0d5-fa2a-ac7c" type="rule"/>
              </infoLinks>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="1.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="d894-6570-a109-ab7b" name="Molotov Cocktails" publicationId="55c7-45e5-pubEL3DK" page="76" hidden="false" collective="false" import="true" type="upgrade">
              <profiles>
                <profile id="defd-694d-edbc-c9e4" name="Molotov Cocktails" publicationId="55c7-45e5-pubEL3DK" page="67" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
                  <characteristics>
                    <characteristic name="Type" typeId="69fc-8560-0644-48e2"/>
                    <characteristic name="Attack" typeId="c3db-f302-e618-7458">1d6</characteristic>
                    <characteristic name="Range" typeId="7de6-2500-ebda-e68b">Medium	</characteristic>
                    <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d">Ammo 5. Crew Fired. Fire. Indirect. Blitz.</characteristic>
                    <characteristic name="Ammo" typeId="5779-672e-d159-0983"/>
                  </characteristics>
                </profile>
              </profiles>
              <infoLinks>
                <infoLink id="971b-4668-8273-be63" name="Crew Fired" hidden="false" targetId="5787-b79b-cab5-b98e" type="rule"/>
                <infoLink id="cd83-775c-7230-12dd" name="Fire" hidden="false" targetId="b5f1-700d-e57a-930b" type="rule"/>
                <infoLink id="a1aa-640e-fb21-65fc" name="Indirect" hidden="false" targetId="4bf2-b0d5-fa2a-ac7c" type="rule"/>
                <infoLink id="b28e-c783-f435-b6ad" name="Blitz" hidden="false" targetId="d77d-17aa-4a42-3afb" type="rule"/>
              </infoLinks>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="1.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="77b4-fcf6-77a0-1f8f" name="Gas Grenades" publicationId="55c7-45e5-pubEL3DK" page="76" hidden="false" collective="false" import="true" type="upgrade">
              <profiles>
                <profile id="ee5b-c260-7c32-df75" name="Gas Grenades" publicationId="55c7-45e5-pubEL3DK" page="67" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
                  <characteristics>
                    <characteristic name="Type" typeId="69fc-8560-0644-48e2"></characteristic>
                    <characteristic name="Attack" typeId="c3db-f302-e618-7458">1d6</characteristic>
                    <characteristic name="Range" typeId="7de6-2500-ebda-e68b">Medium</characteristic>
                    <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d">Ammo 5. Crew Fired. Indirect. Blitz.</characteristic>
                    <characteristic name="Ammo" typeId="5779-672e-d159-0983"/>
                  </characteristics>
                </profile>
              </profiles>
              <rules>
                <rule id="b61a-6e32-ef6e-27cc" name="Gas Grenades" publicationId="55c7-45e5-pubEL3DK" page="76" hidden="false">
                  <description>If this weapon scores one or more un-cancelled hits on the target, instead of causing damage, reduce the target&apos;s Crew Value by 1 for each un-cancelled hit,  to a minimum of 0, until the end of the Gear Phase.</description>
                </rule>
              </rules>
              <infoLinks>
                <infoLink id="4dad-496b-fd15-3e94" name="Crew Fired" hidden="false" targetId="5787-b79b-cab5-b98e" type="rule"/>
                <infoLink id="6033-99c2-ccf0-70f5" name="Blitz" hidden="false" targetId="d77d-17aa-4a42-3afb" type="rule"/>
                <infoLink id="9b10-d4af-79cb-ef9a" name="Indirect" hidden="false" targetId="4bf2-b0d5-fa2a-ac7c" type="rule"/>
              </infoLinks>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="1.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="cccb-f52f-e4b5-dc42" name="Magnum" publicationId="55c7-45e5-pubEL3DK" page="76" hidden="false" collective="false" import="true" type="upgrade">
              <profiles>
                <profile id="1d6c-2bc0-3659-c264" name="Magnum" publicationId="55c7-45e5-pubEL3DK" page="67" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
                  <characteristics>
                    <characteristic name="Type" typeId="69fc-8560-0644-48e2"/>
                    <characteristic name="Attack" typeId="c3db-f302-e618-7458">1d6</characteristic>
                    <characteristic name="Range" typeId="7de6-2500-ebda-e68b">Double</characteristic>
                    <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d">Crew Fired. Blast</characteristic>
                    <characteristic name="Ammo" typeId="5779-672e-d159-0983"/>
                  </characteristics>
                </profile>
              </profiles>
              <infoLinks>
                <infoLink id="4dd8-91c1-1fca-ea08" name="Blast" hidden="false" targetId="05af-9c36-1963-9be4" type="rule"/>
                <infoLink id="dc97-e2ae-0f9e-f38b" name="Crew Fired" hidden="false" targetId="5787-b79b-cab5-b98e" type="rule"/>
              </infoLinks>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="3.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="cfa5-be45-8bb5-d46d" name="Blunderbuss" hidden="false" collective="false" import="true" type="upgrade">
              <profiles>
                <profile id="b43c-7601-f9eb-5c1c" name="Blunderbuss" publicationId="55c7-45e5-pubEL3DK" page="67" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
                  <characteristics>
                    <characteristic name="Type" typeId="69fc-8560-0644-48e2">Crew Fired</characteristic>
                    <characteristic name="Attack" typeId="c3db-f302-e618-7458">2d6</characteristic>
                    <characteristic name="Range" typeId="7de6-2500-ebda-e68b">Small Burst</characteristic>
                    <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d"/>
                    <characteristic name="Ammo" typeId="5779-672e-d159-0983"/>
                  </characteristics>
                </profile>
              </profiles>
              <infoLinks>
                <infoLink id="a76e-7550-b650-fc29" name="Crew Fired" hidden="false" targetId="5787-b79b-cab5-b98e" type="rule"/>
              </infoLinks>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="2.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="9d3a-bf84-3c4b-b93c" name="Steel Nets" publicationId="55c7-45e5-pubEL3DK" page="76" hidden="false" collective="false" import="true" type="upgrade">
              <profiles>
                <profile id="4d16-4097-a707-3443" name="Steel Nets" publicationId="55c7-45e5-pubEL3DK" page="67" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
                  <characteristics>
                    <characteristic name="Type" typeId="69fc-8560-0644-48e2"/>
                    <characteristic name="Attack" typeId="c3db-f302-e618-7458">3d6</characteristic>
                    <characteristic name="Range" typeId="7de6-2500-ebda-e68b">Short</characteristic>
                    <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d">Crew Fired. Blast.</characteristic>
                    <characteristic name="Ammo" typeId="5779-672e-d159-0983"/>
                  </characteristics>
                </profile>
              </profiles>
              <rules>
                <rule id="430b-7e2d-e1e2-719a" name="Steel Nets" hidden="false">
                  <description>This weapon&apos;s hits do not cause damage. Hits will add Hazard Tokens as a result of the Blast special rule as normal.</description>
                </rule>
              </rules>
              <infoLinks>
                <infoLink id="ee40-c6c1-4328-53c0" name="Crew Fired" hidden="false" targetId="5787-b79b-cab5-b98e" type="rule"/>
                <infoLink id="2d25-3a50-ed03-69f3" name="Blast" hidden="false" targetId="05af-9c36-1963-9be4" type="rule"/>
              </infoLinks>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="2.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="45e6-ba19-93e6-516f" name="Shotgun" publicationId="55c7-45e5-pubEL3DK" page="76" hidden="false" collective="false" import="true" type="upgrade">
              <profiles>
                <profile id="4e03-fa6b-eb27-da94" name="Shotgun" publicationId="55c7-45e5-pubEL3DK" page="67" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
                  <characteristics>
                    <characteristic name="Type" typeId="69fc-8560-0644-48e2"/>
                    <characteristic name="Attack" typeId="c3db-f302-e618-7458">Short - 3d6.  Medium - 2d6. Long - 1d6.</characteristic>
                    <characteristic name="Range" typeId="7de6-2500-ebda-e68b">Long</characteristic>
                    <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d">Crew Fired</characteristic>
                    <characteristic name="Ammo" typeId="5779-672e-d159-0983"/>
                  </characteristics>
                </profile>
              </profiles>
              <infoLinks>
                <infoLink id="2853-a016-17f5-60c1" name="Crew Fired" hidden="false" targetId="5787-b79b-cab5-b98e" type="rule"/>
              </infoLinks>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="4.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="b90d-1355-95bd-ae3a" name="Submachine Guns" publicationId="55c7-45e5-pubEL3DK" page="76" hidden="false" collective="false" import="true" type="upgrade">
              <profiles>
                <profile id="b225-b4ba-5e80-2bab" name="Submachine Guns" publicationId="55c7-45e5-pubEL3DK" page="67" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
                  <characteristics>
                    <characteristic name="Type" typeId="69fc-8560-0644-48e2"/>
                    <characteristic name="Attack" typeId="c3db-f302-e618-7458">3d6</characteristic>
                    <characteristic name="Range" typeId="7de6-2500-ebda-e68b">Medium</characteristic>
                    <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d">Crew Fired</characteristic>
                    <characteristic name="Ammo" typeId="5779-672e-d159-0983"/>
                  </characteristics>
                </profile>
              </profiles>
              <infoLinks>
                <infoLink id="9c9d-1076-6831-8339" name="Crew Fired" hidden="false" targetId="5787-b79b-cab5-b98e" type="rule"/>
              </infoLinks>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="5.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="4604-f232-5c50-3416" name="Handgun" publicationId="55c7-45e5-pubEL3DK" page="67" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="f136-1cdd-f635-c980" type="min"/>
              </constraints>
              <profiles>
                <profile id="f17b-a568-453e-69c2" name="Handgun" publicationId="55c7-45e5-pubEL3DK" page="67" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
                  <characteristics>
                    <characteristic name="Type" typeId="69fc-8560-0644-48e2">Basic</characteristic>
                    <characteristic name="Attack" typeId="c3db-f302-e618-7458">1d6</characteristic>
                    <characteristic name="Range" typeId="7de6-2500-ebda-e68b">Medium</characteristic>
                    <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d">Crew Fired</characteristic>
                    <characteristic name="Ammo" typeId="5779-672e-d159-0983"/>
                  </characteristics>
                </profile>
              </profiles>
              <infoLinks>
                <infoLink id="8524-68b4-b2ca-fdd9" name="Crew Fired" hidden="false" targetId="5787-b79b-cab5-b98e" type="rule"/>
              </infoLinks>
              <costs>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
              </costs>
            </selectionEntry>
          </selectionEntries>
        </selectionEntryGroup>
        <selectionEntryGroup id="70d5-8038-b9eb-a390" name="Trailers" hidden="true" collective="false" import="true">
          <modifiers>
            <modifier type="set" field="hidden" value="false">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="e91f-341e-63b4-6539" type="equalTo"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
          <modifierGroups>
            <modifierGroup>
              <conditions>
                <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="e91f-341e-63b4-6539" type="equalTo"/>
              </conditions>
              <modifiers>
                <modifier type="set" field="2417-33c8-310a-9584" value="1.0"/>
                <modifier type="set" field="75e1-2d98-2cdc-689e" value="1.0"/>
              </modifiers>
            </modifierGroup>
          </modifierGroups>
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="8f64-cada-2175-b60e" type="max"/>
            <constraint field="selections" scope="parent" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="4ce8-b1d4-8cf2-c54b" type="min"/>
            <constraint field="selections" scope="roster" value="-1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="2417-33c8-310a-9584" type="min"/>
            <constraint field="selections" scope="roster" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="75e1-2d98-2cdc-689e" type="max"/>
          </constraints>
          <selectionEntries>
            <selectionEntry id="df2c-181b-b7cf-92ac" name="Lightweight" hidden="false" collective="false" import="true" type="upgrade">
              <entryLinks>
                <entryLink id="f5c9-604c-097d-fde3" name="Trailer Upgrades" hidden="false" collective="false" import="true" targetId="04c4-0e9f-556b-817c" type="selectionEntryGroup"/>
              </entryLinks>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="4.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="e44a-e5fc-d07b-86c5" name="Middleweight" hidden="false" collective="false" import="true" type="upgrade">
              <modifiers>
                <modifier type="set" field="hidden" value="true">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition field="selections" scope="ancestor" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="d4f7-0b52-6568-ee8f" type="instanceOf"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
              </modifiers>
              <entryLinks>
                <entryLink id="0725-0a1a-784f-2561" name="Trailer Upgrades" hidden="false" collective="false" import="true" targetId="04c4-0e9f-556b-817c" type="selectionEntryGroup"/>
              </entryLinks>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="8.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="36d8-6a63-8ac4-d919" name="Heavyweight" hidden="true" collective="false" import="true" type="upgrade">
              <modifiers>
                <modifier type="set" field="hidden" value="true">
                  <conditionGroups>
                    <conditionGroup type="or">
                      <conditions>
                        <condition field="selections" scope="ancestor" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="d4f7-0b52-6568-ee8f" type="instanceOf"/>
                        <condition field="selections" scope="ancestor" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="96a0-cfb4-47ee-0a2f" type="instanceOf"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
              </modifiers>
              <entryLinks>
                <entryLink id="080d-bf4a-9ad6-6bea" name="Trailer Upgrades" hidden="false" collective="false" import="true" targetId="04c4-0e9f-556b-817c" type="selectionEntryGroup"/>
              </entryLinks>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="12.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
          </selectionEntries>
        </selectionEntryGroup>
      </selectionEntryGroups>
      <entryLinks>
        <entryLink id="89a2-0bf0-1d3d-5237" name="Weapons" hidden="false" collective="false" import="true" targetId="4c53-70ee-8e18-ea38" type="selectionEntryGroup"/>
      </entryLinks>
    </selectionEntryGroup>
    <selectionEntryGroup id="efd0-4e11-81a4-f448" name="Driver Perks" hidden="false" collective="false" import="true">
      <selectionEntries>
        <selectionEntry id="fc9c-b917-4954-32b7" name="Louder Siren" hidden="true" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="hidden" value="false">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="dedc-2c1b-1abe-00e2" type="equalTo"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="2fd4-0499-a07e-626f" type="max"/>
          </constraints>
          <costs>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="2.0"/>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <selectionEntryGroups>
        <selectionEntryGroup id="b822-bc12-3dc5-5a12" name="Aggression" hidden="true" collective="false" import="true">
          <modifiers>
            <modifier type="set" field="hidden" value="false">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="ff0d-40bb-7461-43f8" type="equalTo"/>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="d82a-5237-2a8f-2af9" type="equalTo"/>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="c626-3c9e-3d9b-6c75" type="equalTo"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
          <selectionEntries>
            <selectionEntry id="e5ab-8052-26ee-73ab" name="Battlehammer" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="823d-50d0-ed2c-2934" type="max"/>
              </constraints>
              <rules>
                <rule id="82fb-5b84-311d-9af4" name="Battlehammer" publicationId="55c7-45e5-pubEL3DK" page="104" hidden="false">
                  <description>When making a Smash Attack, this vehicle gains +1 attack die for each Hazard Token it currently has.</description>
                </rule>
              </rules>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="4.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="fc2f-d866-c6e1-5b81" name="Double-Barrelled" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="7ddc-eb22-b3f4-1d90" type="max"/>
              </constraints>
              <rules>
                <rule id="1060-603c-7d35-ae59" name="Double-Barrelled" publicationId="55c7-45e5-pubEL3DK" page="104" hidden="false">
                  <description>During this vehicle&apos;s Attack Step, up to three weapons with the Crew Fired special rule may gain a +1 bonus to hit.</description>
                </rule>
              </rules>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="2.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="8883-d3f3-3fa7-4721" name="Boarding Party" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="f9bd-7b0d-19e0-9954" type="max"/>
              </constraints>
              <rules>
                <rule id="57da-289a-ee75-d317" name="Boarding Party" publicationId="55c7-45e5-pubEL3DK" page="104" hidden="false">
                  <description>This vehicle ignores the Distracted rule, meaning this vehicle may attack during the Attack Step even if the vehicle is touching an obstacle.</description>
                </rule>
              </rules>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="2.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="0d3f-49c3-dfe0-30eb" name="Murder Tractor" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="0f47-bace-5027-f37a" type="max"/>
              </constraints>
              <rules>
                <rule id="840c-0d0a-6a23-d414" name="Murder Tractor" publicationId="55c7-45e5-pubEL3DK" page="105" hidden="false">
                  <description>This vehicle may make piledriver attacks like a War Rig.</description>
                </rule>
              </rules>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="5.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="9f7c-241d-fa6c-d041" name="Terrifying Lunatic" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="339b-9dd7-5742-6218" type="max"/>
              </constraints>
              <rules>
                <rule id="acd0-34a8-57ac-45de" name="Terrifying Lunatic" publicationId="55c7-45e5-pubEL3DK" page="104" hidden="false">
                  <description>Whenever a vehicle controlled by another player ends its Movement Step within Short range of this vehicle, the active vehicle gains a Hazard Token.</description>
                </rule>
              </rules>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="5.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="a7f1-15a4-f515-de56" name="Grinderman" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="7efc-f78a-b5c3-fd18" type="max"/>
              </constraints>
              <rules>
                <rule id="0abe-4444-b4ff-8868" name="Grinderman" publicationId="55c7-45e5-pubEL3DK" page="105" hidden="false">
                  <description>Before this vehicle rolls its attack dice in a Smash Attack, it may choose to add 1 Hazard Token to the target vehicle for each point of damage it inflicts, instead of removing Hull Points.</description>
                </rule>
              </rules>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="5.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
          </selectionEntries>
        </selectionEntryGroup>
        <selectionEntryGroup id="81e0-a34d-adc9-727a" name="Technology" hidden="true" collective="false" import="true">
          <modifiers>
            <modifier type="set" field="hidden" value="false">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="3057-1f8e-63b6-95e6" type="equalTo"/>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="9c5d-00ed-e27f-d508" type="equalTo"/>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="549b-c1e3-0c08-8654" type="equalTo"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
          <selectionEntries>
            <selectionEntry id="3735-6034-970a-0f22" name="Satellite Navigation" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="c4c9-f21b-96b4-4c80" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="2.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="bc21-d25a-b1a1-4cab" name="Whizbang" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="eae6-9ca4-be34-df42" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="1.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="0353-5bc9-3efe-dc4e" name="Rocket Thrusters" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="a446-a95c-c3ad-fb1d" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="1.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="30d1-8ae8-d936-8a61" name="Mobile Mechanic" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="d797-d5f6-cccc-c77c" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="5.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="1d29-cfdc-d619-7c5a" name="Gyroscope" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="0572-7ec6-5a76-fadd" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="1.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="a305-f7a5-39da-1453" name="Eureka!" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="573a-4bae-cb04-be16" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="4.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
          </selectionEntries>
        </selectionEntryGroup>
        <selectionEntryGroup id="c6d2-304c-76b3-3a2f" name="Speed" hidden="true" collective="false" import="true">
          <modifiers>
            <modifier type="set" field="hidden" value="false">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="2a2d-ea1c-ee35-aa8e" type="equalTo"/>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="dedc-2c1b-1abe-00e2" type="equalTo"/>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="a1c8-2e30-e885-9a9f" type="equalTo"/>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="817e-017b-ec86-84e7" type="equalTo"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
          <selectionEntries>
            <selectionEntry id="70d1-38ad-3075-c129" name="Force Transferal" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="9da4-6550-faae-4e86" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="2.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="0684-b9c8-d102-d13c" name="Hell For Leather" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="69d5-b434-ba99-6e4b" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="5.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="de70-6415-fbf7-a4dc" name="Overload" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="43d4-6e52-0f72-b04a" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="2.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="11c3-1067-9ff2-2f22" name="Slipstream" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="d96a-6de1-1265-fb8e" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="2.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="27bd-decb-39e3-e33b" name="Time Extended!" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="4ba9-ad83-ed59-6c02" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="3.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="284a-adc6-c5fb-8590" name="Hot Start" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="4b8a-32e7-57ac-e0e7" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="1.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
          </selectionEntries>
        </selectionEntryGroup>
        <selectionEntryGroup id="cb06-9e3a-31a3-b83e" name="Precision" hidden="true" collective="false" import="true">
          <modifiers>
            <modifier type="set" field="hidden" value="false">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="f324-d908-797f-872a" type="equalTo"/>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="2a2d-ea1c-ee35-aa8e" type="equalTo"/>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="1d46-f710-a188-9813" type="equalTo"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
          <selectionEntries>
            <selectionEntry id="4731-0444-fd2d-893f" name="Restraint" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="afb8-6e36-a66a-7dbc" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="2.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="256b-bf64-2247-3f44" name="Moment of Glory" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="6fcc-d4f3-8930-860a" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="2.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="d642-9d19-80da-b517" name="Trick Driving" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="4545-d414-76a9-f615" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="3.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="8646-046c-b5df-e06a" name="Expertise" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="733b-7874-1787-ebe4" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="3.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="1285-9f78-ba85-6afc" name="Easy Rider" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="926d-0c7f-2c56-e157" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="5.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="5454-35b5-5499-3185" name="Mister Fahrenheit" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="c933-4ece-d998-9f0e" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="2.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
          </selectionEntries>
        </selectionEntryGroup>
        <selectionEntryGroup id="8266-1ef1-c6fb-d5cc" name="Military" hidden="true" collective="false" import="true">
          <modifiers>
            <modifier type="set" field="hidden" value="false">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="3057-1f8e-63b6-95e6" type="equalTo"/>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="6544-f65b-4420-3486" type="equalTo"/>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="c1a0-8430-610a-8a83" type="equalTo"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
          <selectionEntries>
            <selectionEntry id="bc9e-1816-5145-8687" name="Return Fire" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="0b39-f6ca-9b84-3c30" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="5.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="310a-47b8-9bca-8280" name="Rapid Fire" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="55d5-5f3c-85fe-5ba4" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="2.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="a851-a5ca-cffc-6343" name="Loader" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="3341-1d00-3a7d-0bfc" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="2.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="c7b3-ffa1-b084-c08a" name="Headshot" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="6481-dbc2-3899-54d2" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="4.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="6412-7c10-d6f8-7edc" name="Fully Loaded" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="101f-a3ca-ca3b-3d39" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="2.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="dd42-dad6-525c-fbd7" name="Dead-Eye" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="38d3-fea9-2910-00de" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="3.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
          </selectionEntries>
        </selectionEntryGroup>
        <selectionEntryGroup id="786e-fbb5-30ea-0f63" name="Daring" hidden="true" collective="false" import="true">
          <modifiers>
            <modifier type="set" field="hidden" value="false">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="f324-d908-797f-872a" type="equalTo"/>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="b9aa-5dc0-e208-5831" type="equalTo"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
          <selectionEntries>
            <selectionEntry id="fd43-53a6-3430-6d14" name="Chrome-Whisperer" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="3393-a8e7-5c28-3854" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="2.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="b07a-6ef0-a750-a258" name="Hand Brake Artist" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="1b63-a5a5-ab4b-ef4a" type="max"/>
              </constraints>
              <costs>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="3.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="f90a-0d00-6009-af13" name="Stunt Driver" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="cc6e-17c6-d115-a857" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="7.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="30cc-a346-a29c-dd26" name="Slippery" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="7df0-c745-2d94-ccb9" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="3.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="0ec6-875f-6a86-0283" name="Powerslide" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="070c-625d-0d74-e79e" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="5.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="ce4e-ca6b-6d36-1ec2" name="Evasive" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="ffcf-fb2e-cc97-114e" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="5.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
          </selectionEntries>
        </selectionEntryGroup>
        <selectionEntryGroup id="539f-1847-abe4-4b46" name="Badass" hidden="true" collective="false" import="true">
          <modifiers>
            <modifier type="set" field="hidden" value="false">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="ff0d-40bb-7461-43f8" type="equalTo"/>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="6544-f65b-4420-3486" type="equalTo"/>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="135b-c980-8b7e-cc9f" type="equalTo"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
          <selectionEntries>
            <selectionEntry id="89a2-2149-2d9a-2208" name="Road Warrior" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="a2ba-8935-0b81-9b02" type="max"/>
              </constraints>
              <rules>
                <rule id="84d9-ada9-3eba-d7dc" name="Road Warrior" publicationId="55c7-45e5-pubEL3DK" page="105" hidden="false">
                  <description>Once per activation, if this vehicle has successfully caused one ore more hits on an enemy vehicle at any point during this activation, this vehicle may remove a single Hazard Token at the end of its Attack Step.</description>
                </rule>
              </rules>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="2.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="9742-249c-4d80-1d19" name="Powder Keg" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="969d-ea71-45ab-f895" type="max"/>
              </constraints>
              <rules>
                <rule id="3a89-3f08-00c1-ffd0" name="Powder Keg" publicationId="55c7-45e5-pubEL3DK" page="105" hidden="false">
                  <description>This vehicle may add 1 to its explosion check.  Treat this vehicle as one weight-class heavier when it explodes. This bonus DOES apply during resolution ofthe Fireworks perk.</description>
                </rule>
              </rules>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="1.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="3110-d0b0-2b30-6e87" name="Madman" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="499f-7eb0-6f5b-6658" type="max"/>
              </constraints>
              <rules>
                <rule id="a492-bd14-21cd-ad0a" name="Madman" publicationId="55c7-45e5-pubEL3DK" page="105" hidden="false">
                  <description>At the end of this vehicle&apos;s Movement Step, if it has 4 or more Hazard Tokens, it may remove a Hazard Token and place it on another vehicle within Medium Range.</description>
                </rule>
              </rules>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="3.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="a867-9669-2e04-7f67" name="Bullet Time" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="1ee5-9f23-b834-02f9" type="max"/>
              </constraints>
              <rules>
                <rule id="35af-315e-bef0-c579" name="Bullet Time" publicationId="55c7-45e5-pubEL3DK" page="105" hidden="false">
                  <description>If this vehicle resolves a Slide result during its Movement Step, this may select one of its weapons to count as Turret-mounted for the rest of this activation.</description>
                </rule>
              </rules>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="3.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="b044-b748-1889-9bc3" name="Crowd Pleaser" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="056a-40ef-2154-d552" type="max"/>
              </constraints>
              <rules>
                <rule id="b2c9-a6c0-caaf-dce5" name="Crowd Pleaser" publicationId="55c7-45e5-pubEL3DK" page="105" hidden="false">
                  <description>If this vehicle wipes out, gain 1 Audience Vote.</description>
                </rule>
              </rules>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="1.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="7b35-46e6-f9ad-6a6f" name="Cover Me" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="1395-08a6-1c1d-6aa0" type="max"/>
              </constraints>
              <rules>
                <rule id="2b94-db97-0604-47d3" name="Cover Me" publicationId="55c7-45e5-pubEL3DK" page="105" hidden="false">
                  <description>Once during its activation, this vehicle may remove a Hazard Token and place it on another friendly vehicle within Double Range.</description>
                </rule>
              </rules>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="2.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
          </selectionEntries>
        </selectionEntryGroup>
        <selectionEntryGroup id="e654-a3ee-ee22-fa7f" name="Tuning" hidden="true" collective="false" import="true">
          <modifiers>
            <modifier type="set" field="hidden" value="false">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="d82a-5237-2a8f-2af9" type="equalTo"/>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="c7a7-6f7e-bf77-e964" type="equalTo"/>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="1ee0-a644-dcdd-2ec2" type="equalTo"/>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="29ac-7abc-8785-5e73" type="equalTo"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
          <selectionEntries>
            <selectionEntry id="5d90-b08d-1cb0-1fc2" name="Rear Drive" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="eea4-b0d8-d320-7aa2" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="2.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="e9cb-2c2d-4a42-69f7" name="Delicate Touch" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="1eab-a98e-fba0-5954" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="3.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="eac6-de63-ddd5-0053" name="Purring" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="8550-cb3c-b049-6567" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="6.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="6afb-01ab-712c-061c" name="Skiing" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="160e-16d6-5929-48bf" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="6.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="aacc-3010-f859-55c9" name="Momentum" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="8715-bdaf-b089-ed5e" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="3.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="b55c-0a7b-fab1-3742" name="Fenderkiss" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="d23b-1622-ae90-a5e8" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="2.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
          </selectionEntries>
        </selectionEntryGroup>
        <selectionEntryGroup id="3dca-e372-4e41-d372" name="Pursuit" hidden="true" collective="false" import="true">
          <modifiers>
            <modifier type="set" field="hidden" value="false">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="dedc-2c1b-1abe-00e2" type="equalTo"/>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="6c3c-c635-28b4-e819" type="equalTo"/>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="29ac-7abc-8785-5e73" type="equalTo"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
          <selectionEntries>
            <selectionEntry id="4f2c-456c-38fb-d7da" name="On Your Tail" publicationId="55c7-45e5-pubEL3DK" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="f3b3-3a08-0ba1-7425" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="2.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="1b17-18e8-4b05-e7b5" name="Taunt" publicationId="55c7-45e5-pubEL3DK" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="fe3b-d298-9468-610b" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="2.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="40ce-ea27-0bb0-9a01" name="Schadenfreude" publicationId="55c7-45e5-pubEL3DK" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="d6d9-0773-7024-949d" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="2.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="3b93-43ed-6c33-7477" name="PIT" publicationId="55c7-45e5-pubEL3DK" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="315c-8cf6-b4d9-a8e1" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="4.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="d4cd-0d87-5cc7-fd9f" name="Unnerving Eye Contact" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="d86d-4a9e-db94-1ad1" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="5.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="ba0a-535e-b1dd-1b89" name="Out Run" publicationId="55c7-45e5-pubEL3DK" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="4888-44ff-0c61-3ced" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="2.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
          </selectionEntries>
        </selectionEntryGroup>
        <selectionEntryGroup id="0838-f5d9-d94e-612c" name="Reckless" hidden="true" collective="false" import="true">
          <modifiers>
            <modifier type="set" field="hidden" value="false">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="1ee0-a644-dcdd-2ec2" type="equalTo"/>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="c7a7-6f7e-bf77-e964" type="equalTo"/>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="e91f-341e-63b4-6539" type="equalTo"/>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="40c1-a8cc-45ec-98d9" type="equalTo"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
          <selectionEntries>
            <selectionEntry id="aba4-5e8d-7925-1b44" name="Bigger&apos;N You" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="7181-9c48-6c37-8869" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="2.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="f266-e0ec-667f-9f17" name="Drive Angry" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="d152-d1ff-dcf4-7c19" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="1.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="d9fe-c1ec-0e99-1071" name="Don&apos;t Come Knocking" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="d4b2-9d71-6983-b3cb" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="4.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="33d4-d5dd-4a79-e27b" name="Beerserker" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="78f1-2d41-a495-f05e" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="5.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="76c7-f5dd-14eb-74cd" name="In for a Penny" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="c79c-d920-9a8c-e0d7" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="2.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="cbd9-8fe6-17dc-9d76" name="Hog Wild" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="efc4-8c58-c4fd-5c2c" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="2.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
          </selectionEntries>
        </selectionEntryGroup>
        <selectionEntryGroup id="79c5-914d-56ce-e77b" name="Horror" hidden="true" collective="false" import="true">
          <modifiers>
            <modifier type="set" field="hidden" value="false">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="817e-017b-ec86-84e7" type="equalTo"/>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="f9b4-d106-e12a-fb01" type="equalTo"/>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="d00d-1bdb-e267-7444" type="equalTo"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
          <selectionEntries>
            <selectionEntry id="a7d2-aa5f-384f-c24e" name="Ecstatic Visions" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="dbd1-36a7-57ee-a3b8" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="1.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="3763-7cf4-a52c-481d" name="Highway to Hell" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="8872-ff38-ffbe-ef77" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="2.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="44c4-e295-7dc5-0b12" name="Sympathy for the Devil" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="8c8c-dd4f-2d69-4116" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="1.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="861d-4359-cd32-cabe" name="Purifying Flames" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="a869-c048-082b-e095" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="1.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="c268-c969-156c-0f7a" name="Angel of Death" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="4bb7-c00f-d86f-eef4" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="4.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="22b4-79bf-d6a3-56e3" name="Violent Manifestation" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="a616-855d-397e-449a" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="3.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
          </selectionEntries>
        </selectionEntryGroup>
        <selectionEntryGroup id="b05f-10d1-38f2-97f1" name="Built" hidden="true" collective="false" import="true">
          <modifiers>
            <modifier type="set" field="hidden" value="false">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="549b-c1e3-0c08-8654" type="equalTo"/>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="f9b4-d106-e12a-fb01" type="equalTo"/>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="e91f-341e-63b4-6539" type="equalTo"/>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="cf8a-826b-226d-1fd8" type="equalTo"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
          <selectionEntries>
            <selectionEntry id="8216-0506-6aea-7c4b" name="Barrel Roll" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="0133-7658-afb7-11d8" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="2.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="c8ab-4815-8b0e-f560" name="Bruiser" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="7eaa-325a-5407-e1f0" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="4.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="7b73-c596-8e4d-7536" name="Crusher" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="69b6-8d17-220d-4e5f" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="7.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="ac57-c638-d8ef-5519" name="Splashback" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="b8d4-eaa1-3b4f-0c44" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="5.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="795f-6537-7bb9-d71e" name="Dead Weight" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="3243-821c-ce12-0988" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="2.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="5bc7-052c-35ac-51a1" name="Feel No Pain" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="b0ac-c802-487b-6bb2" type="max"/>
              </constraints>
              <costs>
                <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="8.0"/>
                <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
              </costs>
            </selectionEntry>
          </selectionEntries>
        </selectionEntryGroup>
      </selectionEntryGroups>
    </selectionEntryGroup>
    <selectionEntryGroup id="fa58-967b-5455-6fde" name="Mounting" hidden="false" collective="false" import="true" defaultSelectionEntryId="e67e-9cf3-620d-fd1d">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="5356-5300-ee02-789a" type="max"/>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="5802-a914-d712-fb95" type="min"/>
      </constraints>
      <selectionEntries>
        <selectionEntry id="e67e-9cf3-620d-fd1d" name="Front" hidden="false" collective="false" import="true" type="upgrade">
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="0dfa-0028-0e0a-49c9" name="Side" hidden="false" collective="false" import="true" type="upgrade">
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="d218-18ba-73b0-34e2" name="Rear" hidden="false" collective="false" import="true" type="upgrade">
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="bab2-4a49-836f-eee7" name="Turret (Cans x3)" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="hidden" value="true">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition field="selections" scope="ancestor" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="9153-3768-2e17-d56e" type="instanceOf"/>
                    <condition field="selections" scope="ancestor" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="2b91-33e6-8d75-f45b" type="instanceOf"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="ee5e-6e95-3baa-a7e3" name="Free Turret (1 per tank)" hidden="true" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="hidden" value="false">
              <conditions>
                <condition field="selections" scope="ancestor" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="5c3b-7e88-5b9a-51cd" type="instanceOf"/>
              </conditions>
            </modifier>
          </modifiers>
          <constraints>
            <constraint field="selections" scope="primary-catalogue" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="3cfe-8e44-cb4d-9f70" type="max"/>
          </constraints>
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
    </selectionEntryGroup>
    <selectionEntryGroup id="b72d-7f13-d76f-1460" name="Mounting" hidden="false" collective="false" import="true" defaultSelectionEntryId="88b8-fba6-ddce-0ef6">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="b21a-8ead-0b3e-dbaa" type="max"/>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="36e8-5ade-0a53-6810" type="min"/>
      </constraints>
      <selectionEntries>
        <selectionEntry id="a645-da27-8f5f-a18a" name="Side" hidden="false" collective="false" import="true" type="upgrade">
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="88b8-fba6-ddce-0ef6" name="Rear" hidden="false" collective="false" import="true" type="upgrade">
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
    </selectionEntryGroup>
    <selectionEntryGroup id="04c4-0e9f-556b-817c" name="Trailer Upgrades" hidden="true" collective="false" import="true">
      <modifiers>
        <modifier type="set" field="hidden" value="false">
          <conditionGroups>
            <conditionGroup type="or">
              <conditions>
                <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="e91f-341e-63b4-6539" type="equalTo"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
      </modifiers>
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="3e85-f51d-1c04-5946" type="max"/>
        <constraint field="selections" scope="parent" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="d961-7bea-d1e8-d45c" type="min"/>
      </constraints>
      <selectionEntries>
        <selectionEntry id="e2af-c436-8e6e-c169" name="Peach Moonshine" hidden="false" collective="false" import="true" type="upgrade">
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="1a3d-67f4-ee2a-3333" name="Old Fashioned Corn Liquor" hidden="false" collective="false" import="true" type="upgrade">
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="fbbe-d22b-a7d0-d160" name="Siphon Pump" hidden="false" collective="false" import="true" type="upgrade">
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="bebf-90b4-4d8b-571b" name="Cattle-hammer" hidden="false" collective="false" import="true" type="upgrade">
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="1179-7244-1ba5-d001" name="Sourmash Jet Booster" hidden="false" collective="false" import="true" type="upgrade">
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
    </selectionEntryGroup>
    <selectionEntryGroup id="4c53-70ee-8e18-ea38" name="Weapons" hidden="false" collective="false" import="true">
      <selectionEntries>
        <selectionEntry id="bbee-877e-1934-1980" name="Machine Gun" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="91a9-beed-6d55-d7ea" value="6">
              <conditions>
                <condition field="selections" scope="bbee-877e-1934-1980" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="bab2-4a49-836f-eee7" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <profiles>
            <profile id="c0df-4fb7-d37e-0b50" name="Machine Gun" publicationId="55c7-45e5-pubEL3DK" page="67" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
              <characteristics>
                <characteristic name="Type" typeId="69fc-8560-0644-48e2">Basic</characteristic>
                <characteristic name="Attack" typeId="c3db-f302-e618-7458">2d6</characteristic>
                <characteristic name="Range" typeId="7de6-2500-ebda-e68b">Double</characteristic>
                <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d"/>
                <characteristic name="Ammo" typeId="5779-672e-d159-0983"/>
              </characteristics>
            </profile>
          </profiles>
          <entryLinks>
            <entryLink id="29b4-45a3-7c49-8a99" name="Mounting" hidden="false" collective="false" import="true" targetId="fa58-967b-5455-6fde" type="selectionEntryGroup"/>
          </entryLinks>
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="1.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="2.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="2930-d6e5-b4c6-1768" name="Heavy Machine Gun" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="91a9-beed-6d55-d7ea" value="9">
              <conditions>
                <condition field="selections" scope="2930-d6e5-b4c6-1768" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="bab2-4a49-836f-eee7" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <profiles>
            <profile id="46e3-9317-bcff-b669" name="Heavy Machine Gun" publicationId="55c7-45e5-pubEL3DK" page="67" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
              <characteristics>
                <characteristic name="Type" typeId="69fc-8560-0644-48e2">Basic</characteristic>
                <characteristic name="Attack" typeId="c3db-f302-e618-7458">3d6</characteristic>
                <characteristic name="Range" typeId="7de6-2500-ebda-e68b">Double</characteristic>
                <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d"/>
                <characteristic name="Ammo" typeId="5779-672e-d159-0983"/>
              </characteristics>
            </profile>
          </profiles>
          <entryLinks>
            <entryLink id="c898-d3bd-e3c5-4998" name="Mounting" hidden="false" collective="false" import="true" targetId="fa58-967b-5455-6fde" type="selectionEntryGroup"/>
          </entryLinks>
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="1.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="3.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="cfd0-bc98-e1d7-adc5" name="Mini-Gun" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="91a9-beed-6d55-d7ea" value="15.0">
              <conditions>
                <condition field="selections" scope="cfd0-bc98-e1d7-adc5" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="bab2-4a49-836f-eee7" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <profiles>
            <profile id="61f0-06d4-812f-a516" name="Mini-Gun" publicationId="55c7-45e5-pubEL3DK" page="67" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
              <characteristics>
                <characteristic name="Type" typeId="69fc-8560-0644-48e2">Basic</characteristic>
                <characteristic name="Attack" typeId="c3db-f302-e618-7458">4d6</characteristic>
                <characteristic name="Range" typeId="7de6-2500-ebda-e68b">Double</characteristic>
                <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d"/>
                <characteristic name="Ammo" typeId="5779-672e-d159-0983"/>
              </characteristics>
            </profile>
          </profiles>
          <entryLinks>
            <entryLink id="4bb1-afe0-03de-86f6" name="Mounting" hidden="false" collective="false" import="true" targetId="fa58-967b-5455-6fde" type="selectionEntryGroup"/>
          </entryLinks>
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="1.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="5.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="e82d-d828-cef0-9c8a" name="125mm Cannon" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="91a9-beed-6d55-d7ea" value="18.0">
              <conditions>
                <condition field="selections" scope="e82d-d828-cef0-9c8a" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="bab2-4a49-836f-eee7" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <profiles>
            <profile id="7c85-2ba0-6af2-c629" name="125mm Cannon" publicationId="55c7-45e5-pubEL3DK" page="72" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
              <characteristics>
                <characteristic name="Type" typeId="69fc-8560-0644-48e2">Advanced Weapon</characteristic>
                <characteristic name="Attack" typeId="c3db-f302-e618-7458">8d6</characteristic>
                <characteristic name="Range" typeId="7de6-2500-ebda-e68b">Double</characteristic>
                <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d">Blast.</characteristic>
                <characteristic name="Ammo" typeId="5779-672e-d159-0983">3</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <rules>
            <rule id="5e3e-5a86-e02e-f396" name="125mm Cannon" publicationId="55c7-45e5-pubEL3DK" page="72" hidden="false">
              <description>A tank gun is a ridiculous weapon for a civilian vehicle to carry. When fired, the active vehicle immediately gains 2 Hazard Tokens if it is not a Tank</description>
            </rule>
          </rules>
          <infoLinks>
            <infoLink id="f15b-7a5d-1568-567d" name="Blast" hidden="false" targetId="05af-9c36-1963-9be4" type="rule"/>
          </infoLinks>
          <entryLinks>
            <entryLink id="dff0-f017-8e97-91ec" name="Mounting" hidden="false" collective="false" import="true" targetId="fa58-967b-5455-6fde" type="selectionEntryGroup"/>
          </entryLinks>
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="3.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="6.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="93be-19a1-2779-2ec9" name="Rockets" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="91a9-beed-6d55-d7ea" value="15.0">
              <conditions>
                <condition field="selections" scope="93be-19a1-2779-2ec9" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="bab2-4a49-836f-eee7" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <profiles>
            <profile id="a61e-f3a2-495a-5fbf" name="Rockets" publicationId="55c7-45e5-pubEL3DK" page="72" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
              <characteristics>
                <characteristic name="Type" typeId="69fc-8560-0644-48e2">Advanced</characteristic>
                <characteristic name="Attack" typeId="c3db-f302-e618-7458">6d6</characteristic>
                <characteristic name="Range" typeId="7de6-2500-ebda-e68b">Double</characteristic>
                <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d"></characteristic>
                <characteristic name="Ammo" typeId="5779-672e-d159-0983">3</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <entryLinks>
            <entryLink id="7654-fbf7-d0ce-9872" name="Mounting" hidden="false" collective="false" import="true" targetId="fa58-967b-5455-6fde" type="selectionEntryGroup"/>
          </entryLinks>
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="2.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="5.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="5e85-a1cb-a700-ddcb" name="Flamethrower" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="91a9-beed-6d55-d7ea" value="12.0">
              <conditions>
                <condition field="selections" scope="5e85-a1cb-a700-ddcb" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="bab2-4a49-836f-eee7" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <profiles>
            <profile id="31ee-c29a-8db4-d0a9" name="Flamethrower" publicationId="55c7-45e5-pubEL3DK" page="72" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
              <characteristics>
                <characteristic name="Type" typeId="69fc-8560-0644-48e2">Advanced</characteristic>
                <characteristic name="Attack" typeId="c3db-f302-e618-7458">6d6</characteristic>
                <characteristic name="Range" typeId="7de6-2500-ebda-e68b">Large Burst</characteristic>
                <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d">Splash. Fire. Indirect.</characteristic>
                <characteristic name="Ammo" typeId="5779-672e-d159-0983">3</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <infoLinks>
            <infoLink id="91bf-b8fc-1f77-1361" name="Fire" hidden="false" targetId="b5f1-700d-e57a-930b" type="rule"/>
            <infoLink id="7d82-bd35-4792-dc72" name="Indirect" hidden="false" targetId="4bf2-b0d5-fa2a-ac7c" type="rule"/>
            <infoLink id="f1a4-bd2e-d745-c85a" name="Splash" hidden="false" targetId="c376-f8ea-dedd-1a3e" type="rule"/>
          </infoLinks>
          <entryLinks>
            <entryLink id="6f50-45b4-ea34-86dd" name="Mounting" hidden="false" collective="false" import="true" targetId="fa58-967b-5455-6fde" type="selectionEntryGroup"/>
          </entryLinks>
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="2.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="4.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="40de-1fd4-a9d3-841e" name="Mortar" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="91a9-beed-6d55-d7ea" value="12.0">
              <conditions>
                <condition field="selections" scope="40de-1fd4-a9d3-841e" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="bab2-4a49-836f-eee7" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <profiles>
            <profile id="f0e1-12f4-ed58-8277" name="Mortar" publicationId="55c7-45e5-pubEL3DK" page="72" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
              <characteristics>
                <characteristic name="Type" typeId="69fc-8560-0644-48e2">Advanced</characteristic>
                <characteristic name="Attack" typeId="c3db-f302-e618-7458">4d6</characteristic>
                <characteristic name="Range" typeId="7de6-2500-ebda-e68b">Double</characteristic>
                <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d">Indirect.</characteristic>
                <characteristic name="Ammo" typeId="5779-672e-d159-0983">3</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <infoLinks>
            <infoLink id="50f1-3982-517c-6f67" name="Indirect" hidden="false" targetId="4bf2-b0d5-fa2a-ac7c" type="rule"/>
          </infoLinks>
          <entryLinks>
            <entryLink id="6411-43a5-2367-d010" name="Mounting" hidden="false" collective="false" import="true" targetId="fa58-967b-5455-6fde" type="selectionEntryGroup"/>
          </entryLinks>
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="1.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="4.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="8880-ba02-14e9-0bf7" name="Oil Slick Dropper" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="4672-3073-c4b9-4326" name="Oil Slick Dropper" publicationId="55c7-45e5-pubEL3DK" page="77" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
              <characteristics>
                <characteristic name="Type" typeId="69fc-8560-0644-48e2"/>
                <characteristic name="Attack" typeId="c3db-f302-e618-7458"/>
                <characteristic name="Range" typeId="7de6-2500-ebda-e68b">Dropped</characteristic>
                <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d"></characteristic>
                <characteristic name="Ammo" typeId="5779-672e-d159-0983">3</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <rules>
            <rule id="0345-2f72-2781-5186" name="Oil Slick Dropper" publicationId="55c7-45e5-pubEL3DK" page="79" hidden="false">
              <description>The dropped weapon temaplate for the Oil Slick Dropper counts as a treacherous surface, (see Terrain, page 86)</description>
            </rule>
          </rules>
          <entryLinks>
            <entryLink id="b938-b002-21d3-0ee4" name="Mounting" hidden="false" collective="false" import="true" targetId="b72d-7f13-d76f-1460" type="selectionEntryGroup"/>
          </entryLinks>
          <costs>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="2.0"/>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="42f9-e154-744f-c0ac" name="Caltrop Dropper" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="46ef-a293-5034-9740" name="Caltrop Dropper" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
              <characteristics>
                <characteristic name="Type" typeId="69fc-8560-0644-48e2"></characteristic>
                <characteristic name="Attack" typeId="c3db-f302-e618-7458">2d6</characteristic>
                <characteristic name="Range" typeId="7de6-2500-ebda-e68b">Dropped</characteristic>
                <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d">Small Burst.</characteristic>
                <characteristic name="Ammo" typeId="5779-672e-d159-0983">3</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <rules>
            <rule id="6254-fa50-53fb-95fe" name="Caltrop Dropper" publicationId="55c7-45e5-pubEL3DK" page="79" hidden="false">
              <description>The dropped weapon template for this dropped weapon counts as a treacherous surface, (see Terrain, page 86).
The first vehicle affected by this weapon is attacked with a 2d6 attack, then remove the Caltrops template from play.</description>
            </rule>
          </rules>
          <entryLinks>
            <entryLink id="cdc2-4ad4-522c-318f" name="Mounting" hidden="false" collective="false" import="true" targetId="b72d-7f13-d76f-1460" type="selectionEntryGroup"/>
          </entryLinks>
          <costs>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="1.0"/>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="1.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="1ef3-ca39-1c92-ef2d" name="Glue Dropper" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="ef05-cfd5-9421-53f0" name="Glue Dropper" publicationId="55c7-45e5-pubEL3DK" page="77" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
              <characteristics>
                <characteristic name="Type" typeId="69fc-8560-0644-48e2"/>
                <characteristic name="Attack" typeId="c3db-f302-e618-7458"/>
                <characteristic name="Range" typeId="7de6-2500-ebda-e68b">Dropped</characteristic>
                <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d"></characteristic>
                <characteristic name="Ammo" typeId="5779-672e-d159-0983">1</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <rules>
            <rule id="b97a-6e15-3246-16bd" name="Glue Dropper" publicationId="55c7-45e5-pubEL3DK" page="79" hidden="false">
              <description>The dropped weapon template for the Glue Dropper counts as a treacherous surface. Any vehicle affected by this weapon must reduce its current Gear by 2 at the end of their movement step. A single vehicle may not be affected by this weapon two activations in a row.</description>
            </rule>
          </rules>
          <entryLinks>
            <entryLink id="6838-185e-639e-681a" name="Mounting" hidden="false" collective="false" import="true" targetId="b72d-7f13-d76f-1460" type="selectionEntryGroup"/>
          </entryLinks>
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="1.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="1.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="3cf4-a6ad-70ec-4db2" name="Mine Dropper" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="9d3f-d9b5-53cc-0fed" name="Mine Dropper" publicationId="55c7-45e5-pubEL3DK" page="77" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
              <characteristics>
                <characteristic name="Type" typeId="69fc-8560-0644-48e2"/>
                <characteristic name="Attack" typeId="c3db-f302-e618-7458">4d6</characteristic>
                <characteristic name="Range" typeId="7de6-2500-ebda-e68b">Dropped</characteristic>
                <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d">Small Burst. Blast. </characteristic>
                <characteristic name="Ammo" typeId="5779-672e-d159-0983">3</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <rules>
            <rule id="6b07-edb5-7db0-638b" name="Mine Dropper" publicationId="55c7-45e5-pubEL3DK" page="79" hidden="false">
              <description>The first vehicle affected by this weapon is attacked with a 4d6 attack with Blast, then remove the Mine&apos;s template from play.</description>
            </rule>
          </rules>
          <infoLinks>
            <infoLink id="2e2c-2b49-e4f8-fbb4" name="Blast" hidden="false" targetId="05af-9c36-1963-9be4" type="rule"/>
            <infoLink id="0b0f-1b88-ba03-a39f" name="Small Burst" hidden="false" targetId="93d7-ea77-e524-e565" type="rule"/>
          </infoLinks>
          <entryLinks>
            <entryLink id="7b67-5c84-1709-5f40" name="Mounting" hidden="false" collective="false" import="true" targetId="b72d-7f13-d76f-1460" type="selectionEntryGroup"/>
          </entryLinks>
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="1.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="1.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="1396-2873-2d1c-b70d" name="Smoke Dropper" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="f1ca-bc2a-5e06-6c49" name="Smoke Dropper" publicationId="55c7-45e5-pubEL3DK" page="77" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
              <characteristics>
                <characteristic name="Type" typeId="69fc-8560-0644-48e2"/>
                <characteristic name="Attack" typeId="c3db-f302-e618-7458"/>
                <characteristic name="Range" typeId="7de6-2500-ebda-e68b">Dropped</characteristic>
                <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d"></characteristic>
                <characteristic name="Ammo" typeId="5779-672e-d159-0983">3</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <rules>
            <rule id="eaf1-9592-afb7-f92d" name="Smoke Dropper" publicationId="55c7-45e5-pubEL3DK" page="80" hidden="false">
              <description>This dropped weapon template counts as an obstruction for the purposes of determining Cover.
Whilst a vehicle is in contact with this dropped weapon tamplate, that vehicle counts as distracted.
If any part of a vehicle&apos;s movement template or Final Position touches this dropped weapon template, the vehicle gains 1 Hazard Token at the end of its Movement Step.</description>
            </rule>
          </rules>
          <entryLinks>
            <entryLink id="7b29-61ec-f6ed-6945" name="Mounting" hidden="false" collective="false" import="true" targetId="b72d-7f13-d76f-1460" type="selectionEntryGroup"/>
          </entryLinks>
          <costs>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="1.0"/>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="5e3b-4440-b733-2256" name="Ram" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="91a9-beed-6d55-d7ea" value="12.0">
              <conditions>
                <condition field="selections" scope="5e3b-4440-b733-2256" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="bab2-4a49-836f-eee7" type="equalTo"/>
              </conditions>
            </modifier>
            <modifier type="set" field="ba54-acdf-648d-86c5" value="0.0">
              <conditions>
                <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="1ee0-a644-dcdd-2ec2" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <entryLinks>
            <entryLink id="4116-71da-c5d1-1692" name="Mounting" hidden="false" collective="false" import="true" targetId="fa58-967b-5455-6fde" type="selectionEntryGroup"/>
          </entryLinks>
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="1.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="4.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="08cd-a900-0ac5-63e0" name="Exploding Ram" hidden="false" collective="false" import="true" type="upgrade">
          <entryLinks>
            <entryLink id="f016-4015-9250-6830" name="Mounting" hidden="false" collective="false" import="true" targetId="fa58-967b-5455-6fde" type="selectionEntryGroup"/>
          </entryLinks>
          <costs>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="3.0"/>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="2e21-e094-c441-30ad" name="Thumper" hidden="true" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="hidden" value="false">
              <conditionGroups>
                <conditionGroup type="and">
                  <conditions>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="3057-1f8e-63b6-95e6" type="equalTo"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
          <profiles>
            <profile id="8e07-dd2a-0ae5-a6f0" name="Thumper" publicationId="55c7-45e5-pubEL3DK" page="72" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
              <characteristics>
                <characteristic name="Type" typeId="69fc-8560-0644-48e2">Advanced</characteristic>
                <characteristic name="Attack" typeId="c3db-f302-e618-7458"/>
                <characteristic name="Range" typeId="7de6-2500-ebda-e68b">Medium</characteristic>
                <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d">Electrical. Indirect. 360-Degree.</characteristic>
                <characteristic name="Ammo" typeId="5779-672e-d159-0983">1</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <rules>
            <rule id="1407-41b2-8e77-462f" name="Thumper" publicationId="55c7-45e5-pubEL3DK" page="74" hidden="false">
              <description>Mishkin-Sponsored teams only. This weapon does not need to declare a facing when purchased.
The Thumper is a powerful sonic device that emits a shock wave htat hurls nearby vehicles into the air. When this vehicle declares an attack with the Thumper, every other vehicle (friend or foe) within Medium range of this vehicle in a 360-degree Arc of Fire immediately makes a Flip check, in which they count their current Gear as 2 higher, up to a maximum of 6.</description>
            </rule>
          </rules>
          <infoLinks>
            <infoLink id="5aa1-f1fd-eaf0-349d" name="Indirect" hidden="false" targetId="4bf2-b0d5-fa2a-ac7c" type="rule"/>
          </infoLinks>
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="2.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="4.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="89e1-99a7-305e-11c9" name="Arc Lightning Projector" hidden="true" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="hidden" value="false">
              <conditionGroups>
                <conditionGroup type="and">
                  <conditions>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="3057-1f8e-63b6-95e6" type="equalTo"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="set" field="91a9-beed-6d55-d7ea" value="18.0">
              <conditions>
                <condition field="selections" scope="89e1-99a7-305e-11c9" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="bab2-4a49-836f-eee7" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <profiles>
            <profile id="e3e5-8c2c-d485-0a55" name="Arc Lightning Projector" publicationId="55c7-45e5-pubEL3DK" page="72" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
              <characteristics>
                <characteristic name="Type" typeId="69fc-8560-0644-48e2">Advanced	</characteristic>
                <characteristic name="Attack" typeId="c3db-f302-e618-7458">6d6</characteristic>
                <characteristic name="Range" typeId="7de6-2500-ebda-e68b">Double</characteristic>
                <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d">Electrical</characteristic>
                <characteristic name="Ammo" typeId="5779-672e-d159-0983">1</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <rules>
            <rule id="b6ab-a478-b7e3-6747" name="Arc Lightning Projector" publicationId="55c7-45e5-pubEL3DK" page="72" hidden="false">
              <description>Mishkin-sponsored teams only.  The Arc Lightning Projector is a dangerous weapon that can arc electricity across multiple conductive targets.  After damaging a target, this vehicle MUST immediately attack another target within Short range and 360-degree Arc of Fire of the current target (including this vehicle).  This chain-reaction continues until the weapon fails to damage a target, or there are no further viable targets.  This vehicle can target friendly vehicles with the Arc Lightning Projector.  This vehicle cannot target the same vehicle twice in a single Attack Step with the Arc Lightning Projector.</description>
            </rule>
          </rules>
          <entryLinks>
            <entryLink id="42e1-e8ad-8e74-9e40" name="Mounting" hidden="false" collective="false" import="true" targetId="fa58-967b-5455-6fde" type="selectionEntryGroup"/>
          </entryLinks>
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="2.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="6.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="323c-2c88-08e6-714f" name="Kinetic Super Booster" hidden="true" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="hidden" value="false">
              <conditionGroups>
                <conditionGroup type="and">
                  <conditions>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="3057-1f8e-63b6-95e6" type="equalTo"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="set" field="91a9-beed-6d55-d7ea" value="18">
              <conditions>
                <condition field="selections" scope="323c-2c88-08e6-714f" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="bab2-4a49-836f-eee7" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <profiles>
            <profile id="9c79-63e4-c8eb-9956" name="Kinetic Super Booster" publicationId="55c7-45e5-pubEL3DK" page="72" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
              <characteristics>
                <characteristic name="Type" typeId="69fc-8560-0644-48e2">Advanced</characteristic>
                <characteristic name="Attack" typeId="c3db-f302-e618-7458">(6d6)</characteristic>
                <characteristic name="Range" typeId="7de6-2500-ebda-e68b">Double</characteristic>
                <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d">Electrical</characteristic>
                <characteristic name="Ammo" typeId="5779-672e-d159-0983">1</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <rules>
            <rule id="7428-e887-3d07-c917" name="Kinetic Super Booster" publicationId="55c7-45e5-pubEL3DK" page="74" hidden="false">
              <description>Miahkin-sponsored teams only. The Kinetic Super Booter is a bizarre electrical weapon that transfers a jolt of kinetic energy to the target.  The target of a Super Booster attack suffers no damage, but instead immediately increases its current Gear by one for every successful hit, without gaining Hazard Tokens. The Super Booster may not increase a vehicle&apos;s current Gear beyond its max Gear.</description>
            </rule>
          </rules>
          <entryLinks>
            <entryLink id="ec85-abf0-0257-4846" name="Mounting" hidden="false" collective="false" import="true" targetId="fa58-967b-5455-6fde" type="selectionEntryGroup"/>
          </entryLinks>
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="2.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="6.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="08b0-0720-b54d-aef6" name="Magnetic Jammer" hidden="true" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="hidden" value="false">
              <conditionGroups>
                <conditionGroup type="and">
                  <conditions>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="3057-1f8e-63b6-95e6" type="equalTo"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
          <profiles>
            <profile id="9de1-10b2-05b2-5b35" name="Magnetic Jammer" publicationId="55c7-45e5-pubEL3DK" page="72" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
              <characteristics>
                <characteristic name="Type" typeId="69fc-8560-0644-48e2">Advanced</characteristic>
                <characteristic name="Attack" typeId="c3db-f302-e618-7458"/>
                <characteristic name="Range" typeId="7de6-2500-ebda-e68b">Double</characteristic>
                <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d">Electrical</characteristic>
                <characteristic name="Ammo" typeId="5779-672e-d159-0983"/>
              </characteristics>
            </profile>
          </profiles>
          <rules>
            <rule id="db0d-349d-f5c8-1a9f" name="Magnetic Jammer" publicationId="55c7-45e5-pubEL3DK" page="74" hidden="false">
              <description>Mishkin-sponsored teams only. The target vehicle may not discard ammo tokens during its next activation.</description>
            </rule>
          </rules>
          <entryLinks>
            <entryLink id="1494-d2b3-d2d2-2454" name="Mounting" hidden="false" collective="false" import="true" targetId="fa58-967b-5455-6fde" type="selectionEntryGroup"/>
          </entryLinks>
          <costs>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="2.0"/>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="14a8-4e6a-7ad4-366c" name="BFG" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="b722-e980-82f0-1e7e" name="BFG" publicationId="55c7-45e5-pubEL3DK" page="72" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
              <characteristics>
                <characteristic name="Type" typeId="69fc-8560-0644-48e2">Advanced</characteristic>
                <characteristic name="Attack" typeId="c3db-f302-e618-7458">10d6</characteristic>
                <characteristic name="Range" typeId="7de6-2500-ebda-e68b">Double</characteristic>
                <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d"></characteristic>
                <characteristic name="Ammo" typeId="5779-672e-d159-0983">1</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <rules>
            <rule id="a59e-9f99-e451-4582" name="BFG" publicationId="55c7-45e5-pubEL3DK" page="73" hidden="false">
              <description>When this weapon is fired, the vehicle makes an immedately forced move medium straight backwards, reduced to Gear 1 and gains 3 Hazard Tokens. Front mounted only.</description>
            </rule>
          </rules>
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="3.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="1.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="6a46-ab08-6a7a-c509" name="Combat Laser" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="91a9-beed-6d55-d7ea" value="15.0">
              <conditions>
                <condition field="selections" scope="6a46-ab08-6a7a-c509" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="bab2-4a49-836f-eee7" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <profiles>
            <profile id="239a-3e0a-ed54-a21e" name="Combat Laser" publicationId="55c7-45e5-pubEL3DK" page="72" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
              <characteristics>
                <characteristic name="Type" typeId="69fc-8560-0644-48e2">Advanced</characteristic>
                <characteristic name="Attack" typeId="c3db-f302-e618-7458">3d6</characteristic>
                <characteristic name="Range" typeId="7de6-2500-ebda-e68b">Double</characteristic>
                <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d">Splash.</characteristic>
                <characteristic name="Ammo" typeId="5779-672e-d159-0983"/>
              </characteristics>
            </profile>
          </profiles>
          <infoLinks>
            <infoLink id="6047-160b-6352-9b96" name="Splash" hidden="false" targetId="c376-f8ea-dedd-1a3e" type="rule"/>
          </infoLinks>
          <entryLinks>
            <entryLink id="e5cf-ae0a-052f-e5dd" name="Mounting" hidden="false" collective="false" import="true" targetId="fa58-967b-5455-6fde" type="selectionEntryGroup"/>
          </entryLinks>
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="1.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="5.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="9069-f2bf-9940-dee3" name="Death Ray" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="1348-4592-6cc4-772d" name="Death Ray" publicationId="55c7-45e5-pubEL3DK" page="72" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
              <characteristics>
                <characteristic name="Type" typeId="69fc-8560-0644-48e2">Advanced	</characteristic>
                <characteristic name="Attack" typeId="c3db-f302-e618-7458">3d6</characteristic>
                <characteristic name="Range" typeId="7de6-2500-ebda-e68b">Double</characteristic>
                <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d">Electrical.</characteristic>
                <characteristic name="Ammo" typeId="5779-672e-d159-0983">1</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <rules>
            <rule id="08e4-0c50-a5bc-d3ba" name="Death Ray" publicationId="55c7-45e5-pubEL3DK" page="73" hidden="false">
              <description>Mishkin-Sponsored teams only. If this weapon scores five or more un-cancelled hits on the target during a single attack, instead of causing damage, the target car is immediately removed from play (although it counts as having been Wrecked for the purposes of Audience Votes, scenario rules, etc.)</description>
            </rule>
          </rules>
          <entryLinks>
            <entryLink id="2f46-00f2-15e8-af68" name="Mounting" hidden="false" collective="false" import="true" targetId="fa58-967b-5455-6fde" type="selectionEntryGroup"/>
          </entryLinks>
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="1.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="3.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="6f67-4786-8fa2-8eb0" name="Grav Gun" hidden="true" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="hidden" value="false">
              <conditionGroups>
                <conditionGroup type="and">
                  <conditions>
                    <condition field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="3057-1f8e-63b6-95e6" type="equalTo"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="set" field="91a9-beed-6d55-d7ea" value="6.0">
              <conditions>
                <condition field="selections" scope="6f67-4786-8fa2-8eb0" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="bab2-4a49-836f-eee7" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <profiles>
            <profile id="79e5-cdc5-0156-e44b" name="Grav Gun" publicationId="55c7-45e5-pubEL3DK" page="72" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
              <characteristics>
                <characteristic name="Type" typeId="69fc-8560-0644-48e2">Advanced</characteristic>
                <characteristic name="Attack" typeId="c3db-f302-e618-7458">(3d6)</characteristic>
                <characteristic name="Range" typeId="7de6-2500-ebda-e68b">Double</characteristic>
                <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d">Electrical.</characteristic>
                <characteristic name="Ammo" typeId="5779-672e-d159-0983">1</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <rules>
            <rule id="50c3-b9bb-1a86-22fd" name="Grav Gun" publicationId="55c7-45e5-pubEL3DK" page="73" hidden="false">
              <description>Mishkin-Sponsored teams only. If this weapon scores one or more un-cancelled hits on the target, instead of causing damage the attacking vehicle&apos;s controller must choose one of the following: until the end of the target&apos;s next activation the target counts as one weight class heavier or until the end of the target&apos;s next activation the target counts as one weight class lighter.</description>
            </rule>
          </rules>
          <entryLinks>
            <entryLink id="0825-382b-f601-4470" name="Mounting" hidden="false" collective="false" import="true" targetId="fa58-967b-5455-6fde" type="selectionEntryGroup"/>
          </entryLinks>
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="1.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="2.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="638a-260f-6544-f363" name="Grabber Arm" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="91a9-beed-6d55-d7ea" value="18.0">
              <conditions>
                <condition field="selections" scope="638a-260f-6544-f363" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="bab2-4a49-836f-eee7" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <profiles>
            <profile id="7f9b-6f5a-a821-33a4" name="Grabber Arm" publicationId="55c7-45e5-pubEL3DK" page="72" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
              <characteristics>
                <characteristic name="Type" typeId="69fc-8560-0644-48e2">Advanced</characteristic>
                <characteristic name="Attack" typeId="c3db-f302-e618-7458">3d6</characteristic>
                <characteristic name="Range" typeId="7de6-2500-ebda-e68b">Short</characteristic>
                <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d"/>
                <characteristic name="Ammo" typeId="5779-672e-d159-0983"/>
              </characteristics>
            </profile>
          </profiles>
          <rules>
            <rule id="84a0-82fc-8191-91dc" name="Grabber Arm" publicationId="55c7-45e5-pubEL3DK" page="73" hidden="false">
              <description>If this vehicle attacks a target vehicle of the same weight class or lighter with the Grabber Arm and scores one or more un-cancelled hits, the controller of the active vehicle may place the target vehicle anywhere within Short range of the target vehicle&apos;s original position. The target vehicle may be pivoted to face any direction. This movement causes a Collision Window.</description>
            </rule>
          </rules>
          <entryLinks>
            <entryLink id="a0ef-a722-7a81-c5f3" name="Mounting" hidden="false" collective="false" import="true" targetId="fa58-967b-5455-6fde" type="selectionEntryGroup"/>
          </entryLinks>
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="1.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="6.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="27c3-73d9-0d54-57b1" name="Harpoon" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="91a9-beed-6d55-d7ea" value="6">
              <conditions>
                <condition field="selections" scope="27c3-73d9-0d54-57b1" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="bab2-4a49-836f-eee7" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <profiles>
            <profile id="7ee7-8271-2236-b669" name="Harpoon" publicationId="55c7-45e5-pubEL3DK" page="72" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
              <characteristics>
                <characteristic name="Type" typeId="69fc-8560-0644-48e2">Advanced</characteristic>
                <characteristic name="Attack" typeId="c3db-f302-e618-7458">(5d6)</characteristic>
                <characteristic name="Range" typeId="7de6-2500-ebda-e68b">Double</characteristic>
                <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d"/>
                <characteristic name="Ammo" typeId="5779-672e-d159-0983"/>
              </characteristics>
            </profile>
          </profiles>
          <rules>
            <rule id="c044-43e8-f97d-94c1" name="Harpoon" publicationId="55c7-45e5-pubEL3DK" page="74" hidden="false">
              <description>This weapon&apos;s hits do not cause damage. Instead, the first un-cancelled hit on the target spins the target vehicle on the spot to either face directly away from or directly towards the attacking vehicle, whichever requires the smallest degree of rotation, as  the harpoon catches and the chain goes taut. This triggers a Collision Window.
The second and subsequent un-cancelled hits on the target then each cause the target to make a forced Short Straight move towards the attacker, as the harpoon reels the target in.
If the target is a heavier weight class than the attacker, it is the attacking vehicle that is spun and moved towards the target vehicle instead.</description>
            </rule>
          </rules>
          <entryLinks>
            <entryLink id="c8f1-a72a-09ed-e963" name="Mounting" hidden="false" collective="false" import="true" targetId="fa58-967b-5455-6fde" type="selectionEntryGroup"/>
          </entryLinks>
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="1.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="2.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="5c7c-bd3a-cc4c-9ff0" name="Wrecking Ball" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="91a9-beed-6d55-d7ea" value="12.0">
              <conditions>
                <condition field="selections" scope="5c7c-bd3a-cc4c-9ff0" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="bab2-4a49-836f-eee7" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <profiles>
            <profile id="3914-fa57-7f9e-b726" name="Wrecking Ball" publicationId="55c7-45e5-pubEL3DK" page="72" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
              <characteristics>
                <characteristic name="Type" typeId="69fc-8560-0644-48e2">Advanced</characteristic>
                <characteristic name="Attack" typeId="c3db-f302-e618-7458">*</characteristic>
                <characteristic name="Range" typeId="7de6-2500-ebda-e68b">Short</characteristic>
                <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d"/>
                <characteristic name="Ammo" typeId="5779-672e-d159-0983"/>
              </characteristics>
            </profile>
          </profiles>
          <rules>
            <rule id="8759-2ce9-33b4-1c05" name="Wrecking Ball" publicationId="55c7-45e5-pubEL3DK" page="76" hidden="false">
              <description>This weapon does not require a target. When fired, this vehicle must immediately engage in a T-Bone Collision with every vehicle and Destructible obstacle whithn Short range of it, in a 360-degree Arc of Fire, in order chosen by the vehicle&apos;s controller.
During these collisions, all vehicles involved count as having no weapons or perks except this one and all other vehicles must declare an Evade reaction. During each of these Collisions this vehicle gains 2 Smash Attack dice. This vehicle does not gain Hazard Tokens during these Collisions. Collisions triggered by the Wrecking Ball do not benefit from effects from upgrades, such as Rams or Exploding Rams.</description>
            </rule>
          </rules>
          <entryLinks>
            <entryLink id="5198-5606-15f0-bdb0" name="Mounting" hidden="false" collective="false" import="true" targetId="fa58-967b-5455-6fde" type="selectionEntryGroup"/>
          </entryLinks>
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="1.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="2.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="3141-07d0-5bf4-f124" name="Wreck Lobber" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="91a9-beed-6d55-d7ea" value="12.0">
              <conditions>
                <condition field="selections" scope="3141-07d0-5bf4-f124" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="bab2-4a49-836f-eee7" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <profiles>
            <profile id="c96d-bd16-3ca4-26b5" name="Wreck Lobber" publicationId="55c7-45e5-pubEL3DK" page="72" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
              <characteristics>
                <characteristic name="Type" typeId="69fc-8560-0644-48e2">Advanced</characteristic>
                <characteristic name="Attack" typeId="c3db-f302-e618-7458"/>
                <characteristic name="Range" typeId="7de6-2500-ebda-e68b">Double/Dropped</characteristic>
                <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d"></characteristic>
                <characteristic name="Ammo" typeId="5779-672e-d159-0983">3</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <rules>
            <rule id="33f9-5f9d-8096-65d2" name="Wreck Lobber" publicationId="55c7-45e5-pubEL3DK" page="75" hidden="false">
              <description>Trebuchet : The Wreck Lobber does not require a target. When it is fired, place a marker the size of a penny within Double range of the Wreck Lobber&apos;s fire arc.  Roll a Skid Die.
On a Shift result: place the wreck of a Car touching the marker and trigger a collision window.
On a Spin or Slide result: the player to the left of the active player must place the wreck anywhere within Short range of the marker and trigger a Collision Window.
On a Hazard Result: the player to the left of the active player must place the wreck touching the active vehicle and trigger a Collision Window.
Low-loader: If this vehicle collides with a wreck, it may gain 1 Ammo Token for the Wreck Lobber.
Dumper: This vehicle may fire the Wreck Lobber as a rear-mounted dropped weapon instead of using the Trebuchet rules above. In this case, the wreck of a car is placed touching the rear of the active vehicle, and no Collision Window is triggered.</description>
            </rule>
          </rules>
          <entryLinks>
            <entryLink id="394e-0da3-e998-406e" name="Mounting" hidden="false" collective="false" import="true" targetId="fa58-967b-5455-6fde" type="selectionEntryGroup"/>
          </entryLinks>
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="4.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="4.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="0749-5783-ebb1-8e37" name="RC Car Bombs" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="b328-dba7-0dcc-921d" name="RC Car Bombs" publicationId="55c7-45e5-pubEL3DK" page="77" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
              <characteristics>
                <characteristic name="Type" typeId="69fc-8560-0644-48e2"/>
                <characteristic name="Attack" typeId="c3db-f302-e618-7458">4d6</characteristic>
                <characteristic name="Range" typeId="7de6-2500-ebda-e68b">Dropped	</characteristic>
                <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d"></characteristic>
                <characteristic name="Ammo" typeId="5779-672e-d159-0983">3</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <rules>
            <rule id="e377-3cf8-7a31-9bfd" name="RC Car Bombs" publicationId="55c7-45e5-pubEL3DK" page="79" hidden="false">
              <description>Bombs are taped to remote-controlled cars, which are dropped from a vehicle and then piloted to impact.
When attacking with this dropped weapon, place an RC Car (use a tiny car miniature, no larger than 20mm square) so that it is within Short range of the attacking vehicle, and facing in any direction. This placement triggers a Collision Window.
The RC Car counts as a lightweight vehicle in current Gear 3 with 1 Hull Point, 1 Crew and 0 Handling. This tiny car can make shooting attacks but cannot change Gear. Although controlled by the player that dropped it, the RC Car does not count as part of the player&apos;s team, and so cannot be used for the purposes of scenario rules, Audience Votes, or perks.
The RC Car is involved in a Collision, it suffers one damage before the Collission is resolved. When the RC Car would be Wrecked, it instead explodes. When the RC Car explodes, it rolls 4d6 attack dice, as if it were a middleweight vehicle.
If the RC Car wipes out, it suffes one damage before the Wipeout is resolved.</description>
            </rule>
          </rules>
          <entryLinks>
            <entryLink id="8a69-1562-81f8-3f59" name="Mounting" hidden="false" collective="false" import="true" targetId="b72d-7f13-d76f-1460" type="selectionEntryGroup"/>
          </entryLinks>
          <costs>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="3.0"/>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="da2d-caa0-1491-b8b6" name="Sentry Gun" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="1b01-f290-0ada-d3c3" name="Sentry Gun" publicationId="55c7-45e5-pubEL3DK" page="77" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
              <characteristics>
                <characteristic name="Type" typeId="69fc-8560-0644-48e2"/>
                <characteristic name="Attack" typeId="c3db-f302-e618-7458">2d6</characteristic>
                <characteristic name="Range" typeId="7de6-2500-ebda-e68b">Dropped</characteristic>
                <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d"></characteristic>
                <characteristic name="Ammo" typeId="5779-672e-d159-0983">3</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <rules>
            <rule id="0920-8bf2-3b7f-d482" name="Sentry Gun" publicationId="55c7-45e5-pubEL3DK" page="80" hidden="false">
              <description>When attacking with this dropped weapon, place a Sentry Gun so that it is within Short range of the attacking vehicle. 
The Sentry Gun remains in play as a lightweight destructible obstacle. They may be targeted with shooting attacks and have 2 Hull Points.
The Sentry Gun automatically makes a 2d6 shooting attack  against any vehicle that ends their Movement Step within Medium range of the Sentry Gun in a 360-degree Arc of Fire. The target may Evade as normal. This Sentry Gun will never target vehicles from the team of the vehicle that dropped it.
Although controlled by the player that dropped it, the Sentry Gun does not count as part of the player&apos;s team, and so cannot be used for the purposes of scenario rules, Audience Votes, or perks.</description>
            </rule>
          </rules>
          <entryLinks>
            <entryLink id="0625-f79b-6414-9693" name="Mounting" hidden="false" collective="false" import="true" targetId="b72d-7f13-d76f-1460" type="selectionEntryGroup"/>
          </entryLinks>
          <costs>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="3.0"/>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="db52-7fd7-a990-faaa" name="Bazooka" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="91a9-beed-6d55-d7ea" value="12.0">
              <conditions>
                <condition field="selections" scope="db52-7fd7-a990-faaa" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="bab2-4a49-836f-eee7" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <profiles>
            <profile id="66ca-a453-27ef-1d84" name="Bazooka" publicationId="55c7-45e5-pubEL3DK" page="72" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
              <characteristics>
                <characteristic name="Type" typeId="69fc-8560-0644-48e2">Advanced	</characteristic>
                <characteristic name="Attack" typeId="c3db-f302-e618-7458">3d6</characteristic>
                <characteristic name="Range" typeId="7de6-2500-ebda-e68b">Double</characteristic>
                <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d">Blast.</characteristic>
                <characteristic name="Ammo" typeId="5779-672e-d159-0983">3</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <infoLinks>
            <infoLink id="d2fa-9b37-2d4c-4879" name="Blast" hidden="false" targetId="05af-9c36-1963-9be4" type="rule"/>
          </infoLinks>
          <entryLinks>
            <entryLink id="06d0-d832-0866-b867" name="Mounting" hidden="false" collective="false" import="true" targetId="fa58-967b-5455-6fde" type="selectionEntryGroup"/>
          </entryLinks>
          <costs>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="4.0"/>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="2.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="f3d0-4f11-060b-9f57" name="Napalm Dropper" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="21dd-9dca-ba22-fe74" name="Napalm Dropper" publicationId="55c7-45e5-pubEL3DK" page="77" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
              <characteristics>
                <characteristic name="Type" typeId="69fc-8560-0644-48e2"/>
                <characteristic name="Attack" typeId="c3db-f302-e618-7458">4d6</characteristic>
                <characteristic name="Range" typeId="7de6-2500-ebda-e68b">Dropped	</characteristic>
                <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d">Small Burst. Fire. </characteristic>
                <characteristic name="Ammo" typeId="5779-672e-d159-0983">3</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <rules>
            <rule id="595b-0bc1-e917-142b" name="Napalm Dropper" publicationId="55c7-45e5-pubEL3DK" page="79" hidden="false">
              <description>The first vehicle affected by this weapon is attacked with a 4d6 attack with Fire, then remove the Napalm template from play.</description>
            </rule>
          </rules>
          <infoLinks>
            <infoLink id="57a3-0676-b610-0093" name="Fire" hidden="false" targetId="b5f1-700d-e57a-930b" type="rule"/>
            <infoLink id="9a64-585e-c35c-4dfa" name="Small Burst" hidden="false" targetId="93d7-ea77-e524-e565" type="rule"/>
          </infoLinks>
          <entryLinks>
            <entryLink id="7f92-2363-815f-8f69" name="Mounting" hidden="false" collective="false" import="true" targetId="b72d-7f13-d76f-1460" type="selectionEntryGroup"/>
          </entryLinks>
          <costs>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="1.0"/>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="1.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="cfe3-bc6a-1d73-48f3" name="Wall of Amplifiers" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="156e-a783-e58f-99e9" name="Wall of Amplifiers" publicationId="55c7-45e5-pubEL3DK" page="72" hidden="false" typeId="3418-d4a3-250b-ab45" typeName="Weapon">
              <characteristics>
                <characteristic name="Type" typeId="69fc-8560-0644-48e2">Advanced</characteristic>
                <characteristic name="Attack" typeId="c3db-f302-e618-7458"/>
                <characteristic name="Range" typeId="7de6-2500-ebda-e68b">Medium</characteristic>
                <characteristic name="Special Rules" typeId="a354-1bd0-7431-ae3d">360-degree Arc of Fire.</characteristic>
                <characteristic name="Ammo" typeId="5779-672e-d159-0983"/>
              </characteristics>
            </profile>
          </profiles>
          <rules>
            <rule id="1a7a-61c1-96fe-3661" name="Wall of Amplifiers" publicationId="55c7-45e5-pubEL3DK" page="74" hidden="false">
              <description>This weapon does not require a target. When fired, this weapon automatically causes on hit to EVERY vehicle within Medium range and within a 360-degree Arc of Fire. These hits do not cause damage and may be Evaded. For each un-cancelled hit on a vehicle, choose one: either discard 1 Hazard Token from the vehicle or add 1 Hazard Token to the vehicle.</description>
            </rule>
          </rules>
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="3.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="4.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
    </selectionEntryGroup>
    <selectionEntryGroup id="6fe0-3355-8d1d-23bc" name="Special Rules" publicationId="55c7-45e5-pubEL3DK" hidden="false" collective="false" import="true">
      <selectionEntries>
        <selectionEntry id="c37d-eb2b-da59-245b" name="Blast" publicationId="55c7-45e5-pubEL3DK" page="81" hidden="false" collective="false" import="true" type="model">
          <rules>
            <rule id="92ce-7927-69aa-0b6c" name="Blast" hidden="false">
              <description>For every un-cancelled hit caused by a weapon or effect with the Blast rule,  the target immediately gains 1 Hazard Token.</description>
            </rule>
          </rules>
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="24b9-5662-3bce-60b9" name="Electrical" hidden="false" collective="false" import="true" type="unit">
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="a24b-896f-1afd-b59c" name="Blitz" publicationId="55c7-45e5-pubEL3DK" page="81" hidden="false" collective="false" import="true" type="unit">
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="8730-26ef-a848-18fb" name="Crew Fired" publicationId="55c7-45e5-pubEL3DK" page="81" hidden="false" collective="false" import="true" type="unit">
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="ef94-a3a6-efe1-ce98" name="Fire" publicationId="55c7-45e5-pubEL3DK" page="81" hidden="false" collective="false" import="true" type="unit">
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="382c-cfa2-0caf-739f" name="Indirect" publicationId="55c7-45e5-pubEL3DK" page="82" hidden="false" collective="false" import="true" type="unit">
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="28c0-7d17-ed64-0064" name="Splash" publicationId="55c7-45e5-pubEL3DK" page="82" hidden="false" collective="false" import="true" type="unit">
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="b5f1-a31a-05bc-932d" name="Zero Crew" publicationId="55c7-45e5-pubEL3DK" page="82" hidden="false" collective="false" import="true" type="unit">
          <costs>
            <cost name="Build Points" typeId="ba54-acdf-648d-86c5" value="0.0"/>
            <cost name="Cans" typeId="91a9-beed-6d55-d7ea" value="0.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
    </selectionEntryGroup>
  </sharedSelectionEntryGroups>
  <sharedRules>
    <rule id="5787-b79b-cab5-b98e" name="Crew Fired" publicationId="55c7-45e5-pubEL3DK" page="67" hidden="false">
      <description>A weapon that is Crew Fired benefits from a 360-degree Arc of Fire, and does not need to declare a facing when purchased.</description>
    </rule>
    <rule id="05af-9c36-1963-9be4" name="Blast" publicationId="55c7-45e5-pubEL3DK" page="81" hidden="false">
      <description>For every un-cancelled hit caused by a weapon or effect with the Blast rule,  the target immediately gains 1 Hazard Token.</description>
    </rule>
    <rule id="d77d-17aa-4a42-3afb" name="Blitz" publicationId="55c7-45e5-pubEL3DK" page="81" hidden="false">
      <description>This vehicle counts as being armed with a number of copies of this weapon equal to this weapon&apos;s remaining Ammo Tokens, where each copy counts as having a single Ammo Token. This means that during its Attack Step, this vehicle may attack with this weapon any number of times, as long as it doesn&apos;t attack more times than it has Ammo Tokens, and doesn&apos;t attack more times than its Crew Value.</description>
    </rule>
    <rule id="b5f1-700d-e57a-930b" name="Fire" publicationId="55c7-45e5-pubEL3DK" page="81" hidden="false">
      <description>If a vehicle suffers at least one damage from a weapon or effect with the Fire special rule, it gains the On-Fire rule in addition to suffering damage. A vehicle cannot gain the On-Fire rule a second time.
ON FIRE : At the start of this vehicle&apos;s activation, it loses 1 Hull Point. This vehicle&apos;s Smash Attacks count as having the Fire special rule. If this vehicle ever has zero Hazard Tokens, the fire goes out and this vehicle loses the On-Fire rule.</description>
    </rule>
    <rule id="4bf2-b0d5-fa2a-ac7c" name="Indirect" publicationId="55c7-45e5-pubEL3DK" page="82" hidden="false">
      <description>When making a shooting attack with a weapon with this special rule, the vehicle may ignore Terrain and Cover during that attack.</description>
    </rule>
    <rule id="c376-f8ea-dedd-1a3e" name="Splash" publicationId="55c7-45e5-pubEL3DK" page="82" hidden="false">
      <description>When a weapon with the Splash rule is used to attack, the weapon must target, and attack, every vehicle beneath the shooting template, including friendly vehicles. Each target must suffer a separate attack from the weapon.</description>
    </rule>
    <rule id="93d7-ea77-e524-e565" name="Small Burst" hidden="false">
      <description>Use Small Burst Template</description>
    </rule>
  </sharedRules>
</gameSystem>