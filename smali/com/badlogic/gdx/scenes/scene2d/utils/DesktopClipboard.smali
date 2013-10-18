.class public Lcom/badlogic/gdx/scenes/scene2d/utils/DesktopClipboard;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/Clipboard;
.source "SourceFile"

# interfaces
.implements Ljava/awt/datatransfer/ClipboardOwner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Clipboard;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .locals 3

    .prologue
    .line 32
    const-string/jumbo v1, ""

    .line 33
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Toolkit;->getSystemClipboard()Ljava/awt/datatransfer/Clipboard;

    move-result-object v0

    .line 34
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/awt/datatransfer/Clipboard;->getContents(Ljava/lang/Object;)Ljava/awt/datatransfer/Transferable;

    move-result-object v2

    .line 35
    if-eqz v2, :cond_0

    sget-object v0, Ljava/awt/datatransfer/DataFlavor;->stringFlavor:Ljava/awt/datatransfer/DataFlavor;

    invoke-interface {v2, v0}, Ljava/awt/datatransfer/Transferable;->isDataFlavorSupported(Ljava/awt/datatransfer/DataFlavor;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 36
    :goto_0
    if-eqz v0, :cond_1

    .line 38
    :try_start_0
    sget-object v0, Ljava/awt/datatransfer/DataFlavor;->stringFlavor:Ljava/awt/datatransfer/DataFlavor;

    invoke-interface {v2, v0}, Ljava/awt/datatransfer/Transferable;->getTransferData(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/awt/datatransfer/UnsupportedFlavorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 45
    :goto_1
    return-object v0

    .line 35
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public lostOwnership(Ljava/awt/datatransfer/Clipboard;Ljava/awt/datatransfer/Transferable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    return-void
.end method

.method public setContents(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 50
    new-instance v0, Ljava/awt/datatransfer/StringSelection;

    invoke-direct {v0, p1}, Ljava/awt/datatransfer/StringSelection;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/Toolkit;->getSystemClipboard()Ljava/awt/datatransfer/Clipboard;

    move-result-object v1

    .line 52
    invoke-virtual {v1, v0, p0}, Ljava/awt/datatransfer/Clipboard;->setContents(Ljava/awt/datatransfer/Transferable;Ljava/awt/datatransfer/ClipboardOwner;)V

    .line 53
    return-void
.end method
