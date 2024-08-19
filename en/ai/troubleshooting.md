# Troubleshooting

## "Failed to load PyTorch native library" while trying the AI chat

If you encounter this error, download the latest [Visual C++ redistributable from Microsoft](https://learn.microsoft.com/en-us/cpp/windows/latest-supported-vc-redist?view=msvc-170#latest-microsoft-visual-c-redistributable-version).

This installation is only required for AI features in JabRef, all other features can work without it.

If you still encounter this error, then try the approach discussed in the next section.

## JabRef closed or crashed in the middle of downloading the embedding model

Do not worry! You need to delete embedding model cache.

The name of the folder is `.djl.ai`, and it is located in your home directory.
