.class public final Lcom/nianticproject/ingress/common/playerprofile/al;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/j/av;

.field private final b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field private final c:Lcom/nianticproject/ingress/common/playerprofile/AvatarView;

.field private final d:Lcom/nianticproject/ingress/common/ui/widget/g;

.field private final e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private final f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private final g:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field private final h:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private final i:F

.field private final j:Lcom/nianticproject/ingress/common/playerprofile/an;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/j/av;Lcom/badlogic/gdx/scenes/scene2d/Stage;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 73
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/an;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/playerprofile/an;-><init>(Lcom/nianticproject/ingress/common/playerprofile/al;B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->j:Lcom/nianticproject/ingress/common/playerprofile/an;

    .line 88
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 90
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/av;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->a:Lcom/nianticproject/ingress/common/j/av;

    .line 92
    new-instance v1, Lcom/nianticproject/ingress/common/ui/widget/g;

    const-string/jumbo v2, "[ ? ]"

    const-string/jumbo v0, "default"

    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p3, v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lcom/nianticproject/ingress/common/ui/widget/g;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;I)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->d:Lcom/nianticproject/ingress/common/ui/widget/g;

    .line 96
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v1, "[ ? ]"

    const-string/jumbo v2, "profiles-player-header-ap"

    invoke-direct {v0, v1, p3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 97
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v1, "[ ? ]"

    const-string/jumbo v2, "profiles-player-header-ap-to-next-level"

    invoke-direct {v0, v1, p3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 99
    const-string/jumbo v0, "profiles-player-header-ap-to-next-level"

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p3, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v0

    neg-float v0, v0

    const v1, 0x3dcccccd

    mul-float/2addr v0, v1

    .line 101
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 102
    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->d:Lcom/nianticproject/ingress/common/ui/widget/g;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->k()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/a/a/c;->j(F)Lcom/a/a/c;

    .line 107
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 108
    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->k()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/a/a/c;->h(F)Lcom/a/a/c;

    .line 113
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 114
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->k()Lcom/a/a/c;

    .line 119
    const-string/jumbo v0, "profiles-player-header-level-number"

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p3, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 121
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v2

    neg-float v2, v2

    const/high16 v3, 0x3e80

    mul-float/2addr v2, v3

    .line 123
    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const/high16 v4, 0x3fa0

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(F)V

    .line 124
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v4, "[ ? ]"

    invoke-direct {v3, v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v3, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 126
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v3, "LEVEL"

    const-string/jumbo v4, "profiles-player-header-level"

    invoke-direct {v0, v3, p3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    .line 128
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v3, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 130
    iget-object v3, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/a/a/c;->j(F)Lcom/a/a/c;

    .line 131
    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 132
    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    .line 134
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/playerprofile/al;->setWidth(F)V

    .line 135
    const/high16 v0, 0x41c0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->i:F

    .line 136
    iget v0, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->i:F

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/playerprofile/al;->pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 138
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->f()Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;

    move-result-object v0

    invoke-static {}, Lcom/nianticproject/ingress/common/p/a;->a()Lcom/nianticproject/ingress/knobs/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->c(Lcom/nianticproject/ingress/knobs/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;

    invoke-direct {v0, p1, p3}, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;-><init>(Lcom/nianticproject/ingress/common/j/av;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->c:Lcom/nianticproject/ingress/common/playerprofile/AvatarView;

    .line 141
    const/high16 v0, 0x42c0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v0

    .line 143
    const/high16 v2, 0x4180

    invoke-static {v2}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v2

    .line 145
    iget-object v3, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->c:Lcom/nianticproject/ingress/common/playerprofile/AvatarView;

    invoke-virtual {p0, v3}, Lcom/nianticproject/ingress/common/playerprofile/al;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v3

    invoke-virtual {v3, v0, v0}, Lcom/a/a/c;->a(FF)Lcom/a/a/c;

    .line 147
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const-string/jumbo v3, "vertical-separator"

    invoke-virtual {p3, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getPatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/playerprofile/al;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->h()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/a/a/c;->k(F)Lcom/a/a/c;

    .line 151
    if-eqz p4, :cond_0

    .line 152
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->c:Lcom/nianticproject/ingress/common/playerprofile/AvatarView;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->j:Lcom/nianticproject/ingress/common/playerprofile/an;

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 158
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/nianticproject/ingress/common/playerprofile/al;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    .line 161
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/playerprofile/al;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    .line 162
    return-void

    .line 155
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->c:Lcom/nianticproject/ingress/common/playerprofile/AvatarView;

    goto :goto_0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/playerprofile/al;)Lcom/nianticproject/ingress/common/playerprofile/AvatarView;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->c:Lcom/nianticproject/ingress/common/playerprofile/AvatarView;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/playerprofile/al;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/playerprofile/al;)Lcom/nianticproject/ingress/common/j/av;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->a:Lcom/nianticproject/ingress/common/j/av;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->c:Lcom/nianticproject/ingress/common/playerprofile/AvatarView;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->c:Lcom/nianticproject/ingress/common/playerprofile/AvatarView;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->c()V

    .line 228
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;Lcom/nianticproject/ingress/common/playerprofile/j;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 174
    invoke-static {p1}, Lcom/google/a/a/br;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 175
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->k:Ljava/lang/String;

    .line 179
    if-eqz p3, :cond_3

    .line 184
    :goto_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->c:Lcom/nianticproject/ingress/common/playerprofile/AvatarView;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->c:Lcom/nianticproject/ingress/common/playerprofile/AvatarView;

    invoke-virtual {v0, p3}, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->a(Lcom/nianticproject/ingress/common/playerprofile/j;)V

    .line 186
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->c:Lcom/nianticproject/ingress/common/playerprofile/AvatarView;

    invoke-virtual {p2}, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->g()I

    move-result v3

    invoke-static {v3}, Lcom/nianticproject/ingress/shared/t;->c(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->a(I)V

    .line 188
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->c:Lcom/nianticproject/ingress/common/playerprofile/AvatarView;

    invoke-virtual {p2}, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->a()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->a(Lcom/nianticproject/ingress/shared/ai;)V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->d:Lcom/nianticproject/ingress/common/ui/widget/g;

    move-object v5, p1

    invoke-static {}, La;->q()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v5, ""

    :cond_1
    invoke-virtual {v0, v5}, Lcom/nianticproject/ingress/common/ui/widget/g;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v3, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->d:Lcom/nianticproject/ingress/common/ui/widget/g;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {p2}, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->a()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v0

    sget-object v5, Lcom/nianticproject/ingress/common/playerprofile/am;->a:[I

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/ai;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " is unsupported"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move v0, v2

    .line 174
    goto :goto_0

    .line 182
    :cond_3
    invoke-virtual {p2}, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->b()Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/playerprofile/j;->a(Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;)Lcom/nianticproject/ingress/common/playerprofile/j;

    move-result-object p3

    goto :goto_1

    .line 192
    :pswitch_0
    const-string/jumbo v0, "profiles-player-header-nickname-aliens"

    :goto_2
    const-class v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v4, v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v3, v0}, Lcom/nianticproject/ingress/common/ui/widget/g;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 194
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->d:Lcom/nianticproject/ingress/common/ui/widget/g;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/g;->getPrefWidth()F

    .line 195
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->d:Lcom/nianticproject/ingress/common/ui/widget/g;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/g;->getWidth()F

    .line 196
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->d:Lcom/nianticproject/ingress/common/ui/widget/g;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/g;->getMinWidth()F

    .line 197
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->d:Lcom/nianticproject/ingress/common/ui/widget/g;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/g;->getTextBounds()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 198
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "%,d %s"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->f()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    const-string/jumbo v6, "AP"

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    .line 199
    invoke-virtual {p2}, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->g()I

    move-result v0

    .line 200
    invoke-static {v0}, Lcom/nianticproject/ingress/shared/t;->c(I)I

    move-result v3

    .line 201
    iget-object v4, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "%,d"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    .line 202
    invoke-static {}, Lcom/nianticproject/ingress/shared/t;->a()I

    move-result v4

    .line 203
    if-ge v0, v4, :cond_4

    .line 204
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "%,d %s"

    new-array v6, v9, [Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lcom/nianticproject/ingress/shared/t;->b(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v2

    const-string/jumbo v2, "AP to next level"

    aput-object v2, v6, v1

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    .line 209
    :goto_3
    return-void

    .line 192
    :pswitch_1
    const-string/jumbo v0, "profiles-player-header-nickname-resistance"

    goto/16 :goto_2

    :pswitch_2
    const-string/jumbo v0, "profiles-player-header-nickname-neutral"

    goto/16 :goto_2

    .line 207
    :cond_4
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/al;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
