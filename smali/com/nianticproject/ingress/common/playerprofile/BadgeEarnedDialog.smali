.class public final Lcom/nianticproject/ingress/common/playerprofile/BadgeEarnedDialog;
.super Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

.field private final b:Lcom/nianticproject/ingress/common/j/av;

.field private d:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field private e:Lcom/nianticproject/ingress/common/playerprofile/BadgeView;

.field private f:Lcom/nianticproject/ingress/common/j/d;

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;Lcom/nianticproject/ingress/common/j/av;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 51
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/BadgeEarnedDialog$Style;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/playerprofile/BadgeEarnedDialog$Style;-><init>()V

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;-><init>(Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;)V

    .line 52
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeEarnedDialog;->a:Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

    .line 53
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/av;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeEarnedDialog;->b:Lcom/nianticproject/ingress/common/j/av;

    .line 54
    return-void
.end method


# virtual methods
.method protected final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;I)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 70
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeEarnedDialog;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 71
    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 75
    const/high16 v0, 0x4270

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v0

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 78
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeEarnedDialog;->a:Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

    move-object v3, v1

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievementTier;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Z)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeEarnedDialog;->e:Lcom/nianticproject/ingress/common/playerprofile/BadgeView;

    .line 79
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeEarnedDialog;->e:Lcom/nianticproject/ingress/common/playerprofile/BadgeView;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->a()V

    .line 80
    int-to-float v0, p3

    const v1, 0x3eb33333

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 82
    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeEarnedDialog;->e:Lcom/nianticproject/ingress/common/playerprofile/BadgeView;

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/a/a/c;->b(F)Lcom/a/a/c;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/a/a/c;->c(F)Lcom/a/a/c;

    .line 85
    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeEarnedDialog;->a:Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;->c()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->a(Ljava/util/List;)Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievementTier;

    move-result-object v1

    .line 87
    iput-boolean v5, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeEarnedDialog;->g:Z

    .line 88
    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeEarnedDialog;->b:Lcom/nianticproject/ingress/common/j/av;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievementTier;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Lcom/nianticproject/ingress/common/j/av;->a(Ljava/lang/String;IZ)Lcom/nianticproject/ingress/common/j/d;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeEarnedDialog;->f:Lcom/nianticproject/ingress/common/j/d;

    .line 91
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 92
    const-string/jumbo v0, "profiles-badge-earned-dialog-title"

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 94
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v3, "Medal Earned:"

    invoke-direct {v2, v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 96
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->k()Lcom/a/a/c;

    .line 100
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 101
    const-string/jumbo v0, "profiles-badge-earned-dialog-name"

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 103
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeEarnedDialog;->a:Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 104
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->k()Lcom/a/a/c;

    .line 108
    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->i()Lcom/a/a/c;

    move-result-object v0

    const/high16 v1, 0x41c0

    invoke-static {v1}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->g(F)Lcom/a/a/c;

    .line 114
    return-object v6
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeEarnedDialog;->g:Z

    if-eqz v0, :cond_0

    .line 121
    invoke-super {p0}, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;->a()V

    .line 123
    :cond_0
    return-void
.end method

.method protected final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Window;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 58
    const-string/jumbo v0, "subtle-dialog-bg"

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 59
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/y;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/playerprofile/y;-><init>(Lcom/nianticproject/ingress/common/playerprofile/BadgeEarnedDialog;)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 66
    return-void
.end method

.method public final a(F)Z
    .locals 2
    .parameter

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeEarnedDialog;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeEarnedDialog;->f:Lcom/nianticproject/ingress/common/j/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeEarnedDialog;->f:Lcom/nianticproject/ingress/common/j/d;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/j/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeEarnedDialog;->f:Lcom/nianticproject/ingress/common/j/d;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/j/d;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeEarnedDialog;->e:Lcom/nianticproject/ingress/common/playerprofile/BadgeView;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeEarnedDialog;->f:Lcom/nianticproject/ingress/common/j/d;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/j/d;->b()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->a(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 133
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeEarnedDialog;->g:Z

    .line 134
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/playerprofile/BadgeEarnedDialog;->a()V

    .line 137
    :cond_0
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;->a(F)Z

    move-result v0

    return v0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeEarnedDialog;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeEarnedDialog;->e:Lcom/nianticproject/ingress/common/playerprofile/BadgeView;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/nianticproject/ingress/common/playerprofile/BadgeView;)Lcom/nianticproject/ingress/common/playerprofile/BadgeView;

    goto :goto_0
.end method

.method public final dispose()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeEarnedDialog;->f:Lcom/nianticproject/ingress/common/j/d;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeEarnedDialog;->f:Lcom/nianticproject/ingress/common/j/d;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/j/d;->d()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeEarnedDialog;->f:Lcom/nianticproject/ingress/common/j/d;

    .line 146
    :cond_0
    invoke-super {p0}, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;->dispose()V

    .line 147
    return-void
.end method
