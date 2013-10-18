.class final Lcom/nianticproject/ingress/dg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/PortalAddActivity;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/PortalAddActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/nianticproject/ingress/dg;->a:Lcom/nianticproject/ingress/PortalAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, Lcom/nianticproject/ingress/dg;->a:Lcom/nianticproject/ingress/PortalAddActivity;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/PortalAddActivity;->finish()V

    .line 240
    return-void
.end method
