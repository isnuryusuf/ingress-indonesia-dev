.class public final Lcom/nianticproject/ingress/common/missions/a/g;
.super Lcom/nianticproject/ingress/common/missions/a/a;
.source "SourceFile"


# instance fields
.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:F

.field private final h:Lcom/nianticproject/ingress/common/ui/widget/z;

.field private final i:Lcom/nianticproject/ingress/common/ui/widget/z;

.field private final j:Z


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/ui/ad;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;FLcom/nianticproject/ingress/common/ui/widget/z;Lcom/nianticproject/ingress/common/ui/widget/z;Lcom/nianticproject/ingress/common/ui/t;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/common/ui/ad;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "F",
            "Lcom/nianticproject/ingress/common/ui/widget/z;",
            "Lcom/nianticproject/ingress/common/ui/widget/z;",
            "Lcom/nianticproject/ingress/common/ui/t;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p8}, Lcom/nianticproject/ingress/common/missions/a/a;-><init>(Lcom/nianticproject/ingress/common/ui/ad;Lcom/nianticproject/ingress/common/ui/t;)V

    .line 41
    iput-object p2, p0, Lcom/nianticproject/ingress/common/missions/a/g;->d:Ljava/util/List;

    .line 42
    iput-object p3, p0, Lcom/nianticproject/ingress/common/missions/a/g;->e:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/nianticproject/ingress/common/missions/a/g;->f:Ljava/lang/String;

    .line 44
    iput p5, p0, Lcom/nianticproject/ingress/common/missions/a/g;->g:F

    .line 45
    iput-object p6, p0, Lcom/nianticproject/ingress/common/missions/a/g;->h:Lcom/nianticproject/ingress/common/ui/widget/z;

    .line 46
    iput-object p7, p0, Lcom/nianticproject/ingress/common/missions/a/g;->i:Lcom/nianticproject/ingress/common/ui/widget/z;

    .line 47
    iput-boolean p9, p0, Lcom/nianticproject/ingress/common/missions/a/g;->j:Z

    .line 48
    return-void
.end method


# virtual methods
.method protected final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 52
    const-string/jumbo v0, "ADA"

    const-string/jumbo v1, "unknown"

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, p2, v2}, Lcom/nianticproject/ingress/common/missions/a/g;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;Ljava/lang/String;FZ)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 57
    const-string/jumbo v0, "score-resistance-background"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v2

    iget-object v4, p0, Lcom/nianticproject/ingress/common/missions/a/g;->d:Ljava/util/List;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/missions/a/g;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/nianticproject/ingress/common/missions/a/g;->e:Ljava/lang/String;

    iget v7, p0, Lcom/nianticproject/ingress/common/missions/a/g;->g:F

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v7}, Lcom/nianticproject/ingress/common/missions/a/g;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FLjava/util/List;Ljava/lang/String;Ljava/lang/String;F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    return-object v0
.end method

.method protected final c(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/missions/a/g;->j:Z

    if-eqz v0, :cond_0

    .line 71
    const-string/jumbo v4, "Start Training"

    .line 75
    :goto_0
    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/a/g;->h:Lcom/nianticproject/ingress/common/ui/widget/z;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/missions/a/g;->i:Lcom/nianticproject/ingress/common/ui/widget/z;

    const-string/jumbo v5, "Skip"

    const/4 v6, 0x1

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Lcom/nianticproject/ingress/common/missions/a/g;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;FLcom/nianticproject/ingress/common/ui/widget/z;Lcom/nianticproject/ingress/common/ui/widget/z;Ljava/lang/String;Ljava/lang/String;Z)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    return-object v0

    .line 73
    :cond_0
    const-string/jumbo v4, "Start"

    goto :goto_0
.end method

.method public final g()Lcom/nianticproject/ingress/common/missions/cr;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/g;->a:Lcom/nianticproject/ingress/common/missions/a/f;

    return-object v0
.end method
