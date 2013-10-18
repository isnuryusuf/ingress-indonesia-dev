.class Lcom/badlogic/gdx/backends/android/AndroidInput$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/AndroidInput;

.field final synthetic val$listener:Lcom/badlogic/gdx/Input$TextInputListener;

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidInput;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/Input$TextInputListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$3;->this$0:Lcom/badlogic/gdx/backends/android/AndroidInput;

    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$3;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$3;->val$text:Ljava/lang/String;

    iput-object p4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$3;->val$listener:Lcom/badlogic/gdx/Input$TextInputListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 179
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$3;->this$0:Lcom/badlogic/gdx/backends/android/AndroidInput;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/AndroidInput;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 180
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$3;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 181
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$3;->this$0:Lcom/badlogic/gdx/backends/android/AndroidInput;

    iget-object v2, v2, Lcom/badlogic/gdx/backends/android/AndroidInput;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 182
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$3;->val$text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 183
    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    .line 184
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 185
    const-string/jumbo v2, "Ok"

    new-instance v3, Lcom/badlogic/gdx/backends/android/AndroidInput$3$1;

    invoke-direct {v3, p0, v1}, Lcom/badlogic/gdx/backends/android/AndroidInput$3$1;-><init>(Lcom/badlogic/gdx/backends/android/AndroidInput$3;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 195
    const-string/jumbo v1, "Cancel"

    new-instance v2, Lcom/badlogic/gdx/backends/android/AndroidInput$3$2;

    invoke-direct {v2, p0}, Lcom/badlogic/gdx/backends/android/AndroidInput$3$2;-><init>(Lcom/badlogic/gdx/backends/android/AndroidInput$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 205
    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidInput$3$3;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/backends/android/AndroidInput$3$3;-><init>(Lcom/badlogic/gdx/backends/android/AndroidInput$3;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 216
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 217
    return-void
.end method
