.class final Lcom/nianticproject/ingress/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/AndroidComm;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/AndroidComm;)V
    .locals 0
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/nianticproject/ingress/q;->a:Lcom/nianticproject/ingress/AndroidComm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 319
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 315
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 310
    iget-object v0, p0, Lcom/nianticproject/ingress/q;->a:Lcom/nianticproject/ingress/AndroidComm;

    invoke-static {v0}, Lcom/nianticproject/ingress/AndroidComm;->f(Lcom/nianticproject/ingress/AndroidComm;)V

    .line 311
    return-void
.end method
