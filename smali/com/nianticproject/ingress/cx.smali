.class final Lcom/nianticproject/ingress/cx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/PasscodeActivity;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/PasscodeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/nianticproject/ingress/cx;->a:Lcom/nianticproject/ingress/PasscodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lcom/nianticproject/ingress/cx;->a:Lcom/nianticproject/ingress/PasscodeActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/PasscodeActivity;->b(Lcom/nianticproject/ingress/PasscodeActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v0, p0, Lcom/nianticproject/ingress/cx;->a:Lcom/nianticproject/ingress/PasscodeActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/PasscodeActivity;->a(Lcom/nianticproject/ingress/PasscodeActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 162
    return-void

    .line 161
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
