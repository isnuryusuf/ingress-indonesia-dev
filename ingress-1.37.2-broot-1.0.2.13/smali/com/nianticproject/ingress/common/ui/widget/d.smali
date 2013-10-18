.class public Lcom/nianticproject/ingress/common/ui/widget/d;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Button;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 46
    invoke-static {p0}, Lcom/nianticproject/ingress/common/ui/widget/d;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 41
    invoke-static {p0}, Lcom/nianticproject/ingress/common/ui/widget/d;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    .line 76
    invoke-static {p0}, Lcom/nianticproject/ingress/common/ui/widget/d;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 66
    invoke-static {p0}, Lcom/nianticproject/ingress/common/ui/widget/d;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 61
    invoke-static {p0}, Lcom/nianticproject/ingress/common/ui/widget/d;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    .line 62
    return-void
.end method

.method public static a(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)Lcom/badlogic/gdx/scenes/scene2d/ui/Button;
    .locals 1
    .parameter

    .prologue
    .line 25
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/e;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/ui/widget/e;-><init>()V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 31
    return-object p0
.end method
