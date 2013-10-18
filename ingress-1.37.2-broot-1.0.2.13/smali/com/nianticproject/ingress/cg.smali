.class final Lcom/nianticproject/ingress/cg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/w/m;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/NemesisApplication;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/NemesisApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/nianticproject/ingress/cg;->a:Lcom/nianticproject/ingress/NemesisApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 2
    .parameter

    .prologue
    .line 149
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/nianticproject/ingress/cg;->a:Lcom/nianticproject/ingress/NemesisApplication;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/NemesisApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method
