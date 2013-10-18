.class final Lcom/nianticproject/ingress/n/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/n/a;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/n/a;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/nianticproject/ingress/n/b;->a:Lcom/nianticproject/ingress/n/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nianticproject/ingress/n/b;->a:Lcom/nianticproject/ingress/n/a;

    invoke-static {v0}, Lcom/nianticproject/ingress/n/a;->a(Lcom/nianticproject/ingress/n/a;)Lcom/nianticproject/ingress/ui/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/ui/a/c;->a()V

    .line 70
    return-void
.end method
