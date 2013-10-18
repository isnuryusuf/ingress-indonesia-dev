.class final Lcom/nianticproject/ingress/common/ui/widget/ax;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;

.field final synthetic b:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/widget/ax;->b:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/ui/widget/ax;->a:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ax;->b:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ax;->b:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->a()V

    .line 95
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ax;->b:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->a(Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;)I

    move-result v0

    .line 96
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/ax;->b:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    int-to-float v0, v0

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/ax;->a:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;

    iget v2, v2, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;->scrollCps:F

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->a(Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;F)F

    .line 98
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
