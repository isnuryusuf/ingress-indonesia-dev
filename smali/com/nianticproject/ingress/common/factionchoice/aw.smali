.class public abstract Lcom/nianticproject/ingress/common/factionchoice/aw;
.super Lcom/nianticproject/ingress/common/missions/a/a;
.source "SourceFile"


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:F

.field private final f:Lcom/nianticproject/ingress/common/ui/widget/z;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/nianticproject/ingress/common/ui/ad;Ljava/lang/String;FLcom/nianticproject/ingress/common/ui/widget/z;Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/ui/t;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0, p1, p7}, Lcom/nianticproject/ingress/common/missions/a/a;-><init>(Lcom/nianticproject/ingress/common/ui/ad;Lcom/nianticproject/ingress/common/ui/t;)V

    .line 76
    iput-object p2, p0, Lcom/nianticproject/ingress/common/factionchoice/aw;->d:Ljava/lang/String;

    .line 77
    iput p3, p0, Lcom/nianticproject/ingress/common/factionchoice/aw;->e:F

    .line 78
    iput-object p4, p0, Lcom/nianticproject/ingress/common/factionchoice/aw;->f:Lcom/nianticproject/ingress/common/ui/widget/z;

    .line 79
    iput-object p5, p0, Lcom/nianticproject/ingress/common/factionchoice/aw;->g:Ljava/lang/String;

    .line 80
    iput-object p6, p0, Lcom/nianticproject/ingress/common/factionchoice/aw;->h:Ljava/lang/String;

    .line 81
    return-void
.end method


# virtual methods
.method protected final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/aw;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/aw;->h:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, p2, v2}, Lcom/nianticproject/ingress/common/factionchoice/aw;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;Ljava/lang/String;FZ)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 90
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/aw;->g:Ljava/lang/String;

    const-string/jumbo v1, "ADA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "score-resistance-background"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v2

    :goto_0
    iget-object v5, p0, Lcom/nianticproject/ingress/common/factionchoice/aw;->d:Ljava/lang/String;

    iget v7, p0, Lcom/nianticproject/ingress/common/factionchoice/aw;->e:F

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/nianticproject/ingress/common/factionchoice/aw;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FLjava/util/List;Ljava/lang/String;Ljava/lang/String;F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "score-enlightened-background"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v2

    goto :goto_0
.end method

.method protected final c(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 103
    iget-object v2, p0, Lcom/nianticproject/ingress/common/factionchoice/aw;->f:Lcom/nianticproject/ingress/common/ui/widget/z;

    const/4 v3, 0x0

    const-string/jumbo v4, "Proceed"

    const-string/jumbo v5, ""

    const/4 v6, 0x0

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Lcom/nianticproject/ingress/common/factionchoice/aw;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;FLcom/nianticproject/ingress/common/ui/widget/z;Lcom/nianticproject/ingress/common/ui/widget/z;Ljava/lang/String;Ljava/lang/String;Z)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/nianticproject/ingress/common/missions/cr;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/aw;->a:Lcom/nianticproject/ingress/common/missions/a/f;

    return-object v0
.end method
