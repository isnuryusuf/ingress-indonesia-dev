.class public final Lcom/nianticproject/ingress/common/ui/a/f;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;)V
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    .line 19
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/a/f;->a:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    .line 20
    return-void
.end method


# virtual methods
.method public final act(F)Z
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/a/f;->a:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->b()Z

    move-result v0

    return v0
.end method
