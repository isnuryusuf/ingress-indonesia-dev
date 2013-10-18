.class public final Lcom/nianticproject/ingress/common/playerprofile/BadgeView;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.source "SourceFile"


# instance fields
.field private final a:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

.field private final b:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field private final c:Lcom/nianticproject/ingress/common/playerprofile/BadgeView$BadgeViewStyle;

.field private d:Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievementTier;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-direct {p0, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 93
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->e:Z

    .line 114
    iput-object p2, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->d:Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

    .line 115
    const-class v0, Lcom/nianticproject/ingress/common/playerprofile/BadgeView$BadgeViewStyle;

    invoke-virtual {p4, p5, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/playerprofile/BadgeView$BadgeViewStyle;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->c:Lcom/nianticproject/ingress/common/playerprofile/BadgeView$BadgeViewStyle;

    .line 117
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/d;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->c:Lcom/nianticproject/ingress/common/playerprofile/BadgeView$BadgeViewStyle;

    invoke-direct {v0, v2}, Lcom/nianticproject/ingress/common/ui/widget/d;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    .line 118
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const-string/jumbo v2, "badge-locked"

    invoke-virtual {p4, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    .line 119
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 120
    if-eqz p2, :cond_2

    .line 122
    if-eqz p3, :cond_0

    .line 127
    :goto_0
    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    if-eqz p6, :cond_1

    invoke-virtual {p3}, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievementTier;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setVisible(Z)V

    .line 131
    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->b(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)V

    .line 132
    return-void

    .line 125
    :cond_0
    invoke-virtual {p2}, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->a(Ljava/util/List;)Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievementTier;

    move-result-object p3

    goto :goto_0

    :cond_1
    move v0, v1

    .line 127
    goto :goto_1

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setVisible(Z)V

    goto :goto_2
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievementTier;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    const-string/jumbo v5, "default"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievementTier;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;Z)V

    .line 142
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 62
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 63
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    .line 64
    return-object v0
.end method

.method public static a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/nianticproject/ingress/common/playerprofile/BadgeView;)Lcom/nianticproject/ingress/common/playerprofile/BadgeView;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 69
    const-string/jumbo v1, "!"

    const-string/jumbo v0, "profiles-badges-error"

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p0, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->a(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v0

    invoke-direct {p1, v0, v3, v3}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->a(Lcom/badlogic/gdx/scenes/scene2d/Actor;ZZ)V

    return-object p1
.end method

.method public static a(Ljava/util/List;)Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievementTier;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievementTier;",
            ">;)",
            "Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievementTier;"
        }
    .end annotation

    .prologue
    .line 44
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievementTier;

    .line 47
    if-nez v1, :cond_1

    move-object v1, v0

    .line 49
    goto :goto_1

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievementTier;->c()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_2
    move-object v1, v0

    .line 54
    goto :goto_1

    .line 58
    :cond_2
    return-object v1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method private a(Lcom/badlogic/gdx/scenes/scene2d/Actor;ZZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    invoke-direct {p0, p1, p3}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->b(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)V

    .line 177
    if-eqz p2, :cond_0

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->d:Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

    .line 180
    :cond_0
    return-void
.end method

.method private b(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 145
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->clear()V

    .line 146
    if-eqz p1, :cond_1

    .line 147
    if-nez p2, :cond_0

    .line 148
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 150
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    aput-object v1, v0, v2

    aput-object p1, v0, v3

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->stack([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->f()Lcom/a/a/c;

    .line 155
    invoke-static {p1}, Lcom/nianticproject/ingress/common/ui/a/c;->a(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/nianticproject/ingress/common/ui/a/c;

    move-result-object v0

    .line 156
    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/ui/a/c;->a(Z)V

    .line 157
    invoke-virtual {v0, v3}, Lcom/nianticproject/ingress/common/ui/a/c;->b(Z)V

    .line 163
    :goto_0
    return-void

    .line 159
    :cond_1
    new-array v0, v4, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->stack([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->f()Lcom/a/a/c;

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->e:Z

    .line 223
    return-void
.end method

.method public final a(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 3
    .parameter

    .prologue
    .line 204
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 205
    sget-object v1, Lcom/nianticproject/ingress/common/playerprofile/PlayerProfileStyles;->COLOR_TINT_PRESSED_BADGE:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/b/c;->a(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    .line 207
    new-instance v2, Lcom/nianticproject/ingress/common/ui/widget/d;

    invoke-direct {v2, v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/d;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 209
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->a(Lcom/badlogic/gdx/scenes/scene2d/Actor;ZZ)V

    .line 210
    return-void
.end method

.method public final a(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->a(Lcom/badlogic/gdx/scenes/scene2d/Actor;ZZ)V

    .line 189
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->e:Z

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setChecked(Z)V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setChecked(Z)V

    goto :goto_0
.end method

.method public final b()Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->d:Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

    return-object v0
.end method
