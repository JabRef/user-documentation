# Troubleshooting

## "Failed to load PyTorch native library" while trying the AI chat

If you encounter this error, download the latest [Visual C++ redistributable from Microsoft](https://learn.microsoft.com/en-us/cpp/windows/latest-supported-vc-redist?view=msvc-170#latest-microsoft-visual-c-redistributable-version). This installation is only required for AI features in JabRef, all other features can work without it. Also, if multiple installations of CUDA are installed, JabRef's Version needs to be added to the PATH first. For example, on Windows this would be adding `C:\Users\USER\.djl.ai\pytorch\CUDA-VERSION` to the Environment Variables. See [how to edit environment variables on Windows 10 or 11](https://www.howtogeek.com/787217/how-to-edit-environment-variables-on-windows-10-or-11/).

If you still have issues, the [DJL documentation](https://docs.djl.ai/master/docs/development/troubleshooting.html#unsatisfiedlinkerror-issue) might be of help.

## JabRef closed or crashed in the middle of downloading the embedding model

Do not worry! You simply need to delete the embedding model cache.

The name of the folder is `.djl.ai`, and it is located in your home directory.
