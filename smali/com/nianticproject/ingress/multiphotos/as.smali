.class final Lcom/nianticproject/ingress/multiphotos/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/nianticproject/ingress/multiphotos/as;->a:Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/as;->a:Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;

    invoke-static {v0, p3, p2}, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->a(Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;ILandroid/view/View;)V

    .line 127
    return-void
.end method
