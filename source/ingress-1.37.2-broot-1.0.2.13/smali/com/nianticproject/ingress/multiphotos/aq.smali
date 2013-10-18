.class final Lcom/nianticproject/ingress/multiphotos/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/nianticproject/ingress/multiphotos/aq;->a:Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/aq;->a:Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->i()Lcom/nianticproject/ingress/multiphotos/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/multiphotos/av;->d()V

    .line 103
    return-void
.end method
