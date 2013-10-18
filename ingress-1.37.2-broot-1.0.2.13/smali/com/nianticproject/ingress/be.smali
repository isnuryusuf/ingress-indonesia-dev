.class final Lcom/nianticproject/ingress/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/InviteActivity;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/InviteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/nianticproject/ingress/be;->a:Lcom/nianticproject/ingress/InviteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 237
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, Lcom/nianticproject/ingress/be;->a:Lcom/nianticproject/ingress/InviteActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/InviteActivity;->k(Lcom/nianticproject/ingress/InviteActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {}, Lcom/nianticproject/ingress/InviteActivity;->d()Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/be;->a:Lcom/nianticproject/ingress/InviteActivity;

    invoke-static {v2}, Lcom/nianticproject/ingress/InviteActivity;->j(Lcom/nianticproject/ingress/InviteActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 233
    return-void
.end method
