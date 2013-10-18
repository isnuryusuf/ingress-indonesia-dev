.class public Lcom/nianticproject/ingress/common/ui/widget/x;
.super Lcom/nianticproject/ingress/common/ui/widget/m;
.source "SourceFile"


# instance fields
.field private c:Lcom/nianticproject/ingress/common/ui/widget/z;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nianticproject/ingress/common/ui/widget/m;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 46
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/y;

    invoke-direct {v0, p0, p0}, Lcom/nianticproject/ingress/common/ui/widget/y;-><init>(Lcom/nianticproject/ingress/common/ui/widget/x;Lcom/nianticproject/ingress/common/ui/widget/p;)V

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/x;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/widget/x;)Lcom/nianticproject/ingress/common/ui/widget/z;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/x;->c:Lcom/nianticproject/ingress/common/ui/widget/z;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/ui/widget/z;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/widget/x;->c:Lcom/nianticproject/ingress/common/ui/widget/z;

    .line 68
    return-void
.end method

.method public final d()Lcom/nianticproject/ingress/common/ui/widget/z;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/x;->c:Lcom/nianticproject/ingress/common/ui/widget/z;

    return-object v0
.end method
