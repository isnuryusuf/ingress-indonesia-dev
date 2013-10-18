.class public Lcom/badlogic/gdx/scenes/scene2d/utils/AndroidClipboard;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/Clipboard;
.source "SourceFile"


# instance fields
.field private contents:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Clipboard;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/AndroidClipboard;->contents:Ljava/lang/String;

    return-object v0
.end method

.method public setContents(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/AndroidClipboard;->contents:Ljava/lang/String;

    .line 32
    return-void
.end method
