.class final Lcom/nianticproject/ingress/multiphotos/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/nianticproject/ingress/multiphotos/at;->a:Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/at;->a:Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->i()Lcom/nianticproject/ingress/multiphotos/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/multiphotos/av;->f()Lcom/nianticproject/ingress/multiphotos/ba;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/multiphotos/ba;->a(Lcom/nianticproject/ingress/multiphotos/ba;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 134
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/at;->a:Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->i()Lcom/nianticproject/ingress/multiphotos/av;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/multiphotos/av;->a(Z)V

    .line 136
    :cond_0
    return-void
.end method
