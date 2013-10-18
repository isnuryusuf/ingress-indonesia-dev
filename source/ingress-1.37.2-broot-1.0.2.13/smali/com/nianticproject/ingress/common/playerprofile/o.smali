.class final Lcom/nianticproject/ingress/common/playerprofile/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/playerprofile/c;
.implements Lcom/nianticproject/ingress/common/playerprofile/f;
.implements Lcom/nianticproject/ingress/common/ui/ac;


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/j/av;

.field private final b:Lcom/nianticproject/ingress/shared/ai;

.field private final c:I

.field private d:Lcom/nianticproject/ingress/common/playerprofile/t;

.field private e:Lcom/nianticproject/ingress/common/playerprofile/s;

.field private f:Lcom/nianticproject/ingress/common/playerprofile/AvatarView;

.field private g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field private i:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field private j:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field private k:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;

.field private l:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;

.field private m:Lcom/nianticproject/ingress/common/playerprofile/h;

.field private n:Lcom/nianticproject/ingress/common/playerprofile/h;

.field private o:Lcom/nianticproject/ingress/common/playerprofile/a;

.field private p:Lcom/nianticproject/ingress/common/playerprofile/a;

.field private q:Lcom/nianticproject/ingress/common/playerprofile/j;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/playerprofile/j;Lcom/nianticproject/ingress/shared/ai;ILcom/nianticproject/ingress/common/j/av;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->q:Lcom/nianticproject/ingress/common/playerprofile/j;

    .line 100
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/ai;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->b:Lcom/nianticproject/ingress/shared/ai;

    .line 101
    iput p3, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->c:I

    .line 102
    invoke-static {p4}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/av;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->a:Lcom/nianticproject/ingress/common/j/av;

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->d:Lcom/nianticproject/ingress/common/playerprofile/t;

    .line 105
    return-void
.end method

.method private static a(Lcom/nianticproject/ingress/shared/playerprofile/a;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;Lcom/nianticproject/ingress/common/playerprofile/e;Lcom/nianticproject/ingress/common/playerprofile/a;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x4100

    .line 150
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 151
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    const-string/jumbo v2, "avatar-color-picker-button-up"

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getPatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 155
    const-string/jumbo v0, "profiles-avatar-selection-layer-name"

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 157
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/playerprofile/a;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 158
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    .line 162
    invoke-virtual {p2, p3}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->a(Lcom/nianticproject/ingress/common/ui/widget/bc;)V

    .line 163
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 164
    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-static {v5}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/a/a/c;->h(F)Lcom/a/a/c;

    move-result-object v0

    invoke-static {v5}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/a/a/c;->j(F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    .line 171
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 172
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const v2, 0xb6bf

    invoke-static {p1, v2}, Lcom/nianticproject/ingress/common/b/c;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v0

    const/high16 v2, 0x3f80

    invoke-static {v2}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/a/a/c;->c(F)Lcom/a/a/c;

    .line 180
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 181
    invoke-virtual {v1, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {p4}, Lcom/nianticproject/ingress/common/playerprofile/a;->a()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/a/a/c;->g(F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    .line 190
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 191
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 192
    const-string/jumbo v3, "tile-diag"

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getTiledDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 193
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v1, v3, v2

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->stack([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->g()Lcom/a/a/c;

    .line 196
    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/playerprofile/o;)Lcom/nianticproject/ingress/common/playerprofile/s;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->e:Lcom/nianticproject/ingress/common/playerprofile/s;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/playerprofile/o;)Lcom/nianticproject/ingress/common/playerprofile/t;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->d:Lcom/nianticproject/ingress/common/playerprofile/t;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/playerprofile/j;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->q:Lcom/nianticproject/ingress/common/playerprofile/j;

    return-object v0
.end method

.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    .line 353
    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 354
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v0

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setWidth(F)V

    .line 355
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v0

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setHeight(F)V

    .line 357
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v2, "Select Agent Avatar"

    const-string/jumbo v0, "profiles-avatar-title"

    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    const-string/jumbo v3, "default-panel"

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getPatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getCapHeight()F

    move-result v7

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->k()Lcom/a/a/c;

    move-result-object v1

    const v2, 0x3faccccd

    mul-float/2addr v2, v7

    invoke-virtual {v1, v2}, Lcom/a/a/c;->c(F)Lcom/a/a/c;

    move-result-object v1

    neg-float v2, v7

    const v3, 0x3e4ccccd

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/a/a/c;->h(F)Lcom/a/a/c;

    move-result-object v1

    const v2, 0x3e4ccccd

    mul-float/2addr v2, v7

    invoke-virtual {v1, v2}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v0

    const v2, 0x3e4ccccd

    mul-float/2addr v0, v2

    float-to-int v2, v0

    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/h;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->a:Lcom/nianticproject/ingress/common/j/av;

    invoke-direct {v0, p1, v3}, Lcom/nianticproject/ingress/common/playerprofile/h;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/nianticproject/ingress/common/j/av;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->m:Lcom/nianticproject/ingress/common/playerprofile/h;

    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/h;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->a:Lcom/nianticproject/ingress/common/j/av;

    invoke-direct {v0, p1, v3}, Lcom/nianticproject/ingress/common/playerprofile/h;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/nianticproject/ingress/common/j/av;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->n:Lcom/nianticproject/ingress/common/playerprofile/h;

    const/high16 v0, 0x40c0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v0

    new-instance v3, Lcom/nianticproject/ingress/common/playerprofile/a;

    sget-object v4, Lcom/nianticproject/ingress/shared/playerprofile/a;->b:Lcom/nianticproject/ingress/shared/playerprofile/a;

    invoke-direct {v3, v4, p1, p0, v0}, Lcom/nianticproject/ingress/common/playerprofile/a;-><init>(Lcom/nianticproject/ingress/shared/playerprofile/a;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/nianticproject/ingress/common/playerprofile/c;F)V

    iput-object v3, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->o:Lcom/nianticproject/ingress/common/playerprofile/a;

    new-instance v3, Lcom/nianticproject/ingress/common/playerprofile/a;

    sget-object v4, Lcom/nianticproject/ingress/shared/playerprofile/a;->a:Lcom/nianticproject/ingress/shared/playerprofile/a;

    invoke-direct {v3, v4, p1, p0, v0}, Lcom/nianticproject/ingress/common/playerprofile/a;-><init>(Lcom/nianticproject/ingress/shared/playerprofile/a;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/nianticproject/ingress/common/playerprofile/c;F)V

    iput-object v3, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->p:Lcom/nianticproject/ingress/common/playerprofile/a;

    new-instance v3, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;

    const-string/jumbo v0, "profiles-avatar-carousel"

    const-class v4, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;

    invoke-virtual {p1, v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->m:Lcom/nianticproject/ingress/common/playerprofile/h;

    invoke-direct {v3, v2, v2, v0, v4}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;-><init>(IILcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;Lcom/nianticproject/ingress/common/ui/widget/bb;)V

    iput-object v3, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->k:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;

    sget-object v0, Lcom/nianticproject/ingress/shared/playerprofile/a;->b:Lcom/nianticproject/ingress/shared/playerprofile/a;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->k:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;

    new-instance v4, Lcom/nianticproject/ingress/common/playerprofile/e;

    invoke-direct {v4, p0}, Lcom/nianticproject/ingress/common/playerprofile/e;-><init>(Lcom/nianticproject/ingress/common/playerprofile/f;)V

    iget-object v5, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->o:Lcom/nianticproject/ingress/common/playerprofile/a;

    invoke-static {v0, p1, v3, v4, v5}, Lcom/nianticproject/ingress/common/playerprofile/o;->a(Lcom/nianticproject/ingress/shared/playerprofile/a;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;Lcom/nianticproject/ingress/common/playerprofile/e;Lcom/nianticproject/ingress/common/playerprofile/a;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const v3, 0xffac4f

    invoke-static {p1, v3}, Lcom/nianticproject/ingress/common/b/c;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    const/high16 v3, 0x4000

    invoke-static {v3}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/a/a/c;->b(F)Lcom/a/a/c;

    move-result-object v0

    const/high16 v3, 0x4100

    invoke-static {v3}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/a/a/c;->c(F)Lcom/a/a/c;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    new-instance v3, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;

    const-string/jumbo v0, "profiles-avatar-carousel"

    const-class v4, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;

    invoke-virtual {p1, v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->n:Lcom/nianticproject/ingress/common/playerprofile/h;

    invoke-direct {v3, v2, v2, v0, v4}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;-><init>(IILcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;Lcom/nianticproject/ingress/common/ui/widget/bb;)V

    iput-object v3, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->l:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;

    sget-object v0, Lcom/nianticproject/ingress/shared/playerprofile/a;->a:Lcom/nianticproject/ingress/shared/playerprofile/a;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->l:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;

    new-instance v3, Lcom/nianticproject/ingress/common/playerprofile/e;

    invoke-direct {v3, p0}, Lcom/nianticproject/ingress/common/playerprofile/e;-><init>(Lcom/nianticproject/ingress/common/playerprofile/f;)V

    iget-object v4, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->p:Lcom/nianticproject/ingress/common/playerprofile/a;

    invoke-static {v0, p1, v2, v3, v4}, Lcom/nianticproject/ingress/common/playerprofile/o;->a(Lcom/nianticproject/ingress/shared/playerprofile/a;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;Lcom/nianticproject/ingress/common/playerprofile/e;Lcom/nianticproject/ingress/common/playerprofile/a;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->j()Lcom/a/a/c;

    move-result-object v0

    const/high16 v1, 0x4100

    invoke-static {v1}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->h(F)Lcom/a/a/c;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;

    invoke-direct {v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;-><init>()V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->q:Lcom/nianticproject/ingress/common/playerprofile/j;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->b:Lcom/nianticproject/ingress/shared/ai;

    iget v3, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->c:I

    iget-object v4, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->a:Lcom/nianticproject/ingress/common/j/av;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;-><init>(Lcom/nianticproject/ingress/common/playerprofile/j;Lcom/nianticproject/ingress/shared/ai;ILcom/nianticproject/ingress/common/j/av;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->f:Lcom/nianticproject/ingress/common/playerprofile/AvatarView;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->f:Lcom/nianticproject/ingress/common/playerprofile/AvatarView;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->f:Lcom/nianticproject/ingress/common/playerprofile/AvatarView;

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    const/high16 v1, 0x42e8

    invoke-static {v1}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v1

    const/high16 v2, 0x42e8

    invoke-static {v2}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/a/a/c;->a(FF)Lcom/a/a/c;

    move-result-object v0

    const/high16 v1, 0x41c0

    invoke-static {v1}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->j(F)Lcom/a/a/c;

    invoke-virtual {v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->f()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->i()Lcom/a/a/c;

    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/f;

    const-string/jumbo v1, "DONE"

    invoke-direct {v0, v1, p1}, Lcom/nianticproject/ingress/common/ui/widget/f;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    new-instance v1, Lcom/nianticproject/ingress/common/playerprofile/p;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/playerprofile/p;-><init>(Lcom/nianticproject/ingress/common/playerprofile/o;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/f;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    const/high16 v3, 0x4060

    mul-float/2addr v3, v7

    invoke-virtual {v0, v3}, Lcom/a/a/c;->b(F)Lcom/a/a/c;

    move-result-object v0

    const v3, 0x3feccccd

    mul-float/2addr v3, v7

    invoke-virtual {v0, v3}, Lcom/a/a/c;->c(F)Lcom/a/a/c;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->m()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->l()Lcom/a/a/c;

    move-result-object v0

    const/high16 v1, 0x4100

    invoke-static {v1}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->j(F)Lcom/a/a/c;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->f()Lcom/a/a/c;

    move-result-object v0

    const/high16 v1, 0x4100

    invoke-static {v1}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->h(F)Lcom/a/a/c;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;

    invoke-direct {v0, p1}, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->a(Z)V

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v2, ""

    const-string/jumbo v0, "profiles-avatar-error-label"

    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/f;

    const-string/jumbo v1, "RETRY"

    invoke-direct {v0, v1, p1}, Lcom/nianticproject/ingress/common/ui/widget/f;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    new-instance v1, Lcom/nianticproject/ingress/common/playerprofile/q;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/playerprofile/q;-><init>(Lcom/nianticproject/ingress/common/playerprofile/o;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/f;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    const/high16 v1, 0x4100

    invoke-static {v1}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->h(F)Lcom/a/a/c;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    aput-object v2, v0, v1

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->stack([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->f()Lcom/a/a/c;

    move-result-object v0

    const/high16 v1, 0x41c0

    invoke-static {v1}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    move-result-object v0

    const/high16 v1, 0x41c0

    invoke-static {v1}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->k(F)Lcom/a/a/c;

    .line 359
    invoke-virtual {p2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 360
    sget-object v0, Lcom/nianticproject/ingress/common/playerprofile/t;->c:Lcom/nianticproject/ingress/common/playerprofile/t;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/playerprofile/o;->a(Lcom/nianticproject/ingress/common/playerprofile/t;)V

    .line 361
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/playerprofile/s;)V
    .locals 1
    .parameter

    .prologue
    .line 144
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/playerprofile/s;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->e:Lcom/nianticproject/ingress/common/playerprofile/s;

    .line 145
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/playerprofile/t;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 108
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->d:Lcom/nianticproject/ingress/common/playerprofile/t;

    if-ne v0, p1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/playerprofile/t;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->d:Lcom/nianticproject/ingress/common/playerprofile/t;

    .line 113
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setVisible(Z)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setVisible(Z)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setVisible(Z)V

    sget-object v0, Lcom/nianticproject/ingress/common/playerprofile/r;->a:[I

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->d:Lcom/nianticproject/ingress/common/playerprofile/t;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/playerprofile/t;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setVisible(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setVisible(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v1, "Could not load avatar options."

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setVisible(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v1, "Could not set avatar."

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setVisible(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;)V
    .locals 3
    .parameter

    .prologue
    .line 375
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->m:Lcom/nianticproject/ingress/common/playerprofile/h;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/h;->a(Ljava/util/List;)V

    .line 376
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->k:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->e()V

    .line 377
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->n:Lcom/nianticproject/ingress/common/playerprofile/h;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/h;->a(Ljava/util/List;)V

    .line 378
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->l:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->e()V

    .line 381
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->m:Lcom/nianticproject/ingress/common/playerprofile/h;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->q:Lcom/nianticproject/ingress/common/playerprofile/j;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/playerprofile/j;->b()Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/h;->a(Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    .line 383
    if-eqz v0, :cond_0

    .line 384
    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->k:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->a(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->n:Lcom/nianticproject/ingress/common/playerprofile/h;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->q:Lcom/nianticproject/ingress/common/playerprofile/j;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/playerprofile/j;->c()Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/h;->a(Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    .line 388
    if-eqz v0, :cond_1

    .line 389
    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->l:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->a(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->o:Lcom/nianticproject/ingress/common/playerprofile/a;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;->d()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->q:Lcom/nianticproject/ingress/common/playerprofile/j;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/playerprofile/j;->d()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/playerprofile/a;->a(Ljava/util/List;Ljava/lang/Integer;)V

    .line 395
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->p:Lcom/nianticproject/ingress/common/playerprofile/a;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;->c()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->q:Lcom/nianticproject/ingress/common/playerprofile/j;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/playerprofile/j;->e()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/playerprofile/a;->a(Ljava/util/List;Ljava/lang/Integer;)V

    .line 397
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/shared/playerprofile/a;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 415
    sget-object v0, Lcom/nianticproject/ingress/common/playerprofile/r;->b:[I

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/playerprofile/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 423
    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->f:Lcom/nianticproject/ingress/common/playerprofile/AvatarView;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->q:Lcom/nianticproject/ingress/common/playerprofile/j;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->a(Lcom/nianticproject/ingress/common/playerprofile/j;)V

    .line 424
    return-void

    .line 417
    :pswitch_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->q:Lcom/nianticproject/ingress/common/playerprofile/j;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/j;->a()Lcom/nianticproject/ingress/common/playerprofile/k;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/k;->a(Ljava/lang/Integer;)Lcom/nianticproject/ingress/common/playerprofile/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/k;->a()Lcom/nianticproject/ingress/common/playerprofile/j;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->q:Lcom/nianticproject/ingress/common/playerprofile/j;

    goto :goto_0

    .line 420
    :pswitch_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->q:Lcom/nianticproject/ingress/common/playerprofile/j;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/j;->a()Lcom/nianticproject/ingress/common/playerprofile/k;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/k;->b(Ljava/lang/Integer;)Lcom/nianticproject/ingress/common/playerprofile/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/k;->a()Lcom/nianticproject/ingress/common/playerprofile/j;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->q:Lcom/nianticproject/ingress/common/playerprofile/j;

    goto :goto_0

    .line 415
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/nianticproject/ingress/shared/playerprofile/a;Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 402
    sget-object v0, Lcom/nianticproject/ingress/common/playerprofile/r;->b:[I

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/playerprofile/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 410
    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->f:Lcom/nianticproject/ingress/common/playerprofile/AvatarView;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->q:Lcom/nianticproject/ingress/common/playerprofile/j;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->a(Lcom/nianticproject/ingress/common/playerprofile/j;)V

    .line 411
    return-void

    .line 404
    :pswitch_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->q:Lcom/nianticproject/ingress/common/playerprofile/j;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/j;->a()Lcom/nianticproject/ingress/common/playerprofile/k;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/nianticproject/ingress/common/playerprofile/k;->a(Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;)Lcom/nianticproject/ingress/common/playerprofile/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/k;->a()Lcom/nianticproject/ingress/common/playerprofile/j;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->q:Lcom/nianticproject/ingress/common/playerprofile/j;

    goto :goto_0

    .line 407
    :pswitch_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->q:Lcom/nianticproject/ingress/common/playerprofile/j;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/j;->a()Lcom/nianticproject/ingress/common/playerprofile/k;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/nianticproject/ingress/common/playerprofile/k;->b(Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;)Lcom/nianticproject/ingress/common/playerprofile/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/k;->a()Lcom/nianticproject/ingress/common/playerprofile/j;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->q:Lcom/nianticproject/ingress/common/playerprofile/j;

    goto :goto_0

    .line 402
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 365
    const/4 v0, 0x1

    return v0
.end method

.method public final dispose()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/o;->f:Lcom/nianticproject/ingress/common/playerprofile/AvatarView;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->c()V

    .line 371
    return-void
.end method
