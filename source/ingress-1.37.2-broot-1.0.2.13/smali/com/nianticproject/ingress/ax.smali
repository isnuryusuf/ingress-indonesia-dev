.class final Lcom/nianticproject/ingress/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/EnterCorrectTextActivity;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/EnterCorrectTextActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/nianticproject/ingress/ax;->a:Lcom/nianticproject/ingress/EnterCorrectTextActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/nianticproject/ingress/ax;->a:Lcom/nianticproject/ingress/EnterCorrectTextActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->c(Lcom/nianticproject/ingress/EnterCorrectTextActivity;)V

    .line 172
    const/4 v0, 0x1

    .line 174
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
