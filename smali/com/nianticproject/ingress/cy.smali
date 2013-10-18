.class final Lcom/nianticproject/ingress/cy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/PasscodeActivity;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/PasscodeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/nianticproject/ingress/cy;->a:Lcom/nianticproject/ingress/PasscodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Lcom/nianticproject/ingress/cy;->a:Lcom/nianticproject/ingress/PasscodeActivity;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/PasscodeActivity;->finish()V

    .line 178
    return-void
.end method
