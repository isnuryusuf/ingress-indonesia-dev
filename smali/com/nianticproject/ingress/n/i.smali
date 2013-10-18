.class final Lcom/nianticproject/ingress/n/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/n/h;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/n/h;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/nianticproject/ingress/n/i;->a:Lcom/nianticproject/ingress/n/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/nianticproject/ingress/n/i;->a:Lcom/nianticproject/ingress/n/h;

    invoke-static {v0}, Lcom/nianticproject/ingress/n/h;->a(Lcom/nianticproject/ingress/n/h;)Lcom/nianticproject/ingress/ui/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/nianticproject/ingress/n/i;->a:Lcom/nianticproject/ingress/n/h;

    invoke-static {v0}, Lcom/nianticproject/ingress/n/h;->a(Lcom/nianticproject/ingress/n/h;)Lcom/nianticproject/ingress/ui/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/ui/a/c;->a()V

    .line 107
    :cond_0
    return-void
.end method
