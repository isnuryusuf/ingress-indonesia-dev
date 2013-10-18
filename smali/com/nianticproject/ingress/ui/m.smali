.class final Lcom/nianticproject/ingress/ui/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/ui/CommSlidingDrawer;


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/ui/CommSlidingDrawer;)V
    .locals 0
    .parameter

    .prologue
    .line 942
    iput-object p1, p0, Lcom/nianticproject/ingress/ui/m;->a:Lcom/nianticproject/ingress/ui/CommSlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/ui/CommSlidingDrawer;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 942
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/ui/m;-><init>(Lcom/nianticproject/ingress/ui/CommSlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 944
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/m;->a:Lcom/nianticproject/ingress/ui/CommSlidingDrawer;

    invoke-static {v0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->a(Lcom/nianticproject/ingress/ui/CommSlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 956
    :goto_0
    return-void

    .line 951
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/m;->a:Lcom/nianticproject/ingress/ui/CommSlidingDrawer;

    invoke-static {v0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->b(Lcom/nianticproject/ingress/ui/CommSlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 952
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/m;->a:Lcom/nianticproject/ingress/ui/CommSlidingDrawer;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->g()V

    goto :goto_0

    .line 954
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/m;->a:Lcom/nianticproject/ingress/ui/CommSlidingDrawer;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->f()V

    goto :goto_0
.end method
