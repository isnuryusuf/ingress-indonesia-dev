.class Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field private keyboardHeight:I

.field private keyboardShowing:Z

.field screenloc:[I

.field final synthetic this$1:Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2;

.field final synthetic val$content:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2$2;->this$1:Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2;

    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2$2;->val$content:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2$2;->screenloc:[I

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 156
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2$2;->val$content:Landroid/view/View;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2$2;->screenloc:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 157
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2$2;->screenloc:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 158
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2$2;->screenloc:[I

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2$2;->keyboardHeight:I

    .line 159
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2$2;->keyboardHeight:I

    if-lez v0, :cond_0

    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2$2;->keyboardShowing:Z

    .line 160
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2$2;->keyboardHeight:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2$2;->keyboardShowing:Z

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2$2;->this$1:Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2;->this$0:Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 162
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2$2;->this$1:Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2;->this$0:Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;->dialog:Landroid/app/Dialog;

    .line 164
    :cond_1
    return v2
.end method
