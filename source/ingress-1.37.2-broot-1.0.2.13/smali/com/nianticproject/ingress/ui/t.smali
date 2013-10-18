.class public final Lcom/nianticproject/ingress/ui/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/t;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/t;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 21
    :cond_0
    iput-object p1, p0, Lcom/nianticproject/ingress/ui/t;->a:Landroid/view/View;

    .line 22
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/t;->a:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 23
    return-void
.end method
