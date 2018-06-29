Import-module "..\.\PSClassUtils.psm1" -Force

InModuleScope PSClassUtils -ScriptBlock {

    Describe "Testing ConverTo-TitleCase" {
        it "Private: Should not throw" {
            {ConvertTo-TitleCase -String "aaAaa"} | should not Throw
        }

        it "Private: Should return Strinn in Titlecase" {
            ConvertTo-TitleCase -String "powErShelL" | should match "Powershell"
        }
    }
}