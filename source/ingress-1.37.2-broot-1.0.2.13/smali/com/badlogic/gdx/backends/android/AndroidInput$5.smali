.class Lcom/badlogic/gdx/backends/android/AndroidInput$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/AndroidInput;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidInput;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 462
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$5;->this$0:Lcom/badlogic/gdx/backends/android/AndroidInput;

    iput-boolean p2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$5;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 464
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$5;->this$0:Lcom/badlogic/gdx/backends/android/AndroidInput;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidInput;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 465
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$5;->val$visible:Z

    if-eqz v1, :cond_0

    .line 466
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$5;->this$0:Lcom/badlogic/gdx/backends/android/AndroidInput;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/AndroidInput;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-virtual {v1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v1}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getView()Landroid/view/View;

    move-result-object v1

    .line 467
    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 468
    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 469
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$5;->this$0:Lcom/badlogic/gdx/backends/android/AndroidInput;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/AndroidInput;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-virtual {v1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v1}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 473
    :goto_0
    return-void

    .line 471
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$5;->this$0:Lcom/badlogic/gdx/backends/android/AndroidInput;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/AndroidInput;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-virtual {v1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v1}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
