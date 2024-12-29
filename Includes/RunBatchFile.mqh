#import "shell32.dll"
   int ShellExecuteW(int hwnd, string lpOperation, string lpFile, string lpParameters, string lpDirectory, int nShowCmd);
#import

int RunBatchFile(string batchFilePath)
{
    // Run the batch file
    int result = ShellExecuteW(0, "open", batchFilePath, "", "", 1);  // Execute batch file

    // Wait for the script to complete (optional delay, adjust as needed)
    Sleep(2000);

    // Check if the batch file ran successfully
    if (result > 32)
    {
        return 1;  // Success
    }
    else
    {
        return 0;  // Failure
    }
}
