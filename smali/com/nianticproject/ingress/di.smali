.class final Lcom/nianticproject/ingress/di;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/nianticproject/ingress/PortalAddActivity;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/PortalAddActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/nianticproject/ingress/di;->b:Lcom/nianticproject/ingress/PortalAddActivity;

    iput-object p2, p0, Lcom/nianticproject/ingress/di;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/nianticproject/ingress/di;->a:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/nianticproject/ingress/o/f;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 386
    iget-object v0, p0, Lcom/nianticproject/ingress/di;->b:Lcom/nianticproject/ingress/PortalAddActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/PortalAddActivity;->g(Lcom/nianticproject/ingress/PortalAddActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/nianticproject/ingress/di;->b:Lcom/nianticproject/ingress/PortalAddActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/PortalAddActivity;->h(Lcom/nianticproject/ingress/PortalAddActivity;)V

    .line 389
    :cond_0
    return-void
.end method
