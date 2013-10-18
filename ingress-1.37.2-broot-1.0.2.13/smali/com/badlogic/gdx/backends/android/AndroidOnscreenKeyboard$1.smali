.class final Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$1;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field editable:Landroid/text/Editable;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 94
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$PassThroughEditable;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$PassThroughEditable;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$1;->editable:Landroid/text/Editable;

    return-void
.end method


# virtual methods
.method protected final getDefaultEditable()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method protected final getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    return-object v0
.end method

.method public final getEditableText()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$1;->editable:Landroid/text/Editable;

    return-object v0
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "down keycode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "up keycode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
