.class final Lcom/nianticproject/ingress/n/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/n/d;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/n/d;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/nianticproject/ingress/n/e;->a:Lcom/nianticproject/ingress/n/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nianticproject/ingress/n/e;->a:Lcom/nianticproject/ingress/n/d;

    invoke-static {v0}, Lcom/nianticproject/ingress/n/d;->a(Lcom/nianticproject/ingress/n/d;)Lcom/nianticproject/ingress/ui/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/ui/a/c;->a()V

    .line 64
    return-void
.end method
