Describe "Invoke-HAL" -tag Invoke-HAL {
    BeforeAll {
        Import-Module "$PSScriptRoot/../PSAIAgent.psd1" -Force
    }

    It "Function Invoke-HAL exists" {
        { Get-Command Invoke-HAL } | Should -Not -Throw
    }

    # Test if Invoke-HAL function returns the expected output
    It "Invoke-HAL returns the expected output" {
        $actual = Invoke-HAL
        $actual | Should -Be "I'm sorry, Dave. I'm afraid I can't do that."
    }
}