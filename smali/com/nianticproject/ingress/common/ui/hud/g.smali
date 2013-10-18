.class final Lcom/nianticproject/ingress/common/ui/hud/g;
.super Lcom/nianticproject/ingress/common/ui/hud/a;
.source "SourceFile"


# instance fields
.field private a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field private b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private final c:Lcom/nianticproject/ingress/common/model/k;

.field private final d:Lcom/nianticproject/ingress/gameentity/f;

.field private final e:Lcom/nianticproject/ingress/common/scanner/j;

.field private final f:Lcom/badlogic/gdx/math/Rectangle;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/nianticproject/ingress/common/w/a;

.field private final i:Lcom/nianticproject/ingress/common/model/l;


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/scanner/j;Lcom/badlogic/gdx/math/Rectangle;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/hud/a;-><init>()V

    .line 120
    new-instance v0, Lcom/nianticproject/ingress/common/w/a;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/w/a;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->h:Lcom/nianticproject/ingress/common/w/a;

    .line 122
    new-instance v0, Lcom/nianticproject/ingress/common/ui/hud/h;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/ui/hud/h;-><init>(Lcom/nianticproject/ingress/common/ui/hud/g;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->i:Lcom/nianticproject/ingress/common/model/l;

    .line 137
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->c:Lcom/nianticproject/ingress/common/model/k;

    .line 138
    iput-object p5, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->g:Ljava/lang/String;

    .line 139
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {p2, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iput-object p2, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->d:Lcom/nianticproject/ingress/gameentity/f;

    .line 141
    iput-object p3, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->e:Lcom/nianticproject/ingress/common/scanner/j;

    .line 142
    iput-object p4, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->f:Lcom/badlogic/gdx/math/Rectangle;

    .line 144
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->i:Lcom/nianticproject/ingress/common/model/l;

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/common/model/k;->a(Lcom/nianticproject/ingress/common/model/l;)V

    .line 145
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->h:Lcom/nianticproject/ingress/common/w/a;

    invoke-interface {p1}, Lcom/nianticproject/ingress/common/model/k;->g()Lcom/nianticproject/ingress/common/ad;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ad;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/w/a;->a(Lcom/google/a/d/u;)V

    .line 146
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/hud/g;->b()V

    .line 147
    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/scanner/j;Lcom/badlogic/gdx/math/Rectangle;Ljava/lang/String;B)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-direct/range {p0 .. p5}, Lcom/nianticproject/ingress/common/ui/hud/g;-><init>(Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/scanner/j;Lcom/badlogic/gdx/math/Rectangle;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 2
    .parameter

    .prologue
    .line 270
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 271
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/hud/g;->b()V

    .line 272
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object v0
.end method

.method private a(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Z)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 256
    if-eqz p2, :cond_0

    .line 257
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/g;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->e:Lcom/nianticproject/ingress/common/scanner/j;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/scanner/j;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/nianticproject/ingress/common/ui/widget/g;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;I)V

    .line 265
    :goto_0
    return-object v0

    .line 259
    :cond_0
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v3, 0x41a0

    const/16 v4, 0x1e

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;FIZ)V

    .line 265
    new-instance v1, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->e:Lcom/nianticproject/ingress/common/scanner/j;

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/scanner/j;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;-><init>(Ljava/lang/String;Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;ZZ)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 241
    if-eqz p2, :cond_0

    .line 242
    const-string/jumbo v0, "default-dialog"

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-object v1, v0

    .line 247
    :goto_0
    if-eqz p3, :cond_1

    .line 248
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/g;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->e:Lcom/nianticproject/ingress/common/scanner/j;

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/scanner/j;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/nianticproject/ingress/common/ui/widget/g;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;I)V

    .line 250
    :goto_1
    return-object v0

    .line 244
    :cond_0
    const-string/jumbo v0, "small-white"

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-object v1, v0

    goto :goto_0

    .line 250
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->e:Lcom/nianticproject/ingress/common/scanner/j;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/inventory/ui/av;->a(Lcom/nianticproject/ingress/common/scanner/j;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/hud/g;)Lcom/nianticproject/ingress/common/w/a;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->h:Lcom/nianticproject/ingress/common/w/a;

    return-object v0
.end method

.method private static a(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V
    .locals 2
    .parameter

    .prologue
    const/high16 v1, 0x4080

    .line 306
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->defaults()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->k()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/a/a/c;->k(F)Lcom/a/a/c;

    .line 307
    return-void
.end method

.method private b(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 4
    .parameter

    .prologue
    .line 232
    const-string/jumbo v0, "default-dialog"

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 233
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->d:Lcom/nianticproject/ingress/gameentity/f;

    const-class v2, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v1, v2}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/components/Portal;

    .line 234
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getLevelName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getLevel()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/nianticproject/ingress/common/ui/l;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    return-object v2
.end method

.method private b()V
    .locals 4

    .prologue
    .line 223
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    if-nez v0, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->d:Lcom/nianticproject/ingress/gameentity/f;

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    .line 225
    if-eqz v0, :cond_0

    .line 226
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->h:Lcom/nianticproject/ingress/common/w/a;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/w/a;->a()Lcom/google/a/d/u;

    move-result-object v1

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/LocationE6;->getLatLng()Lcom/google/a/d/u;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/a/d/u;->a(Lcom/google/a/d/u;)D

    move-result-wide v0

    double-to-float v0, v0

    .line 228
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Distance: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/l;->a(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/ui/hud/g;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/hud/g;->b()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 7
    .parameter

    .prologue
    const/high16 v5, 0x4000

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 163
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/a/br;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->g:Ljava/lang/String;

    const-class v1, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud$PortalInfoHudStyle;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud$PortalInfoHudStyle;

    move-object v1, v0

    .line 169
    :goto_0
    invoke-static {v5}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v0

    .line 170
    const/high16 v2, 0x4100

    invoke-static {v2}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v2

    .line 171
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v3, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 173
    iget-boolean v3, v1, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud$PortalInfoHudStyle;->useRemotePortalViewStyle:Z

    if-eqz v3, :cond_1

    .line 175
    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->defaults()Lcom/a/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/a/c;->k()Lcom/a/a/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    .line 181
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 182
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/ui/hud/g;->b(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    .line 183
    invoke-direct {p0, p1, v4, v4}, Lcom/nianticproject/ingress/common/ui/hud/g;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;ZZ)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/a/c;->g()Lcom/a/a/c;

    .line 186
    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/a/a/c;->j(F)Lcom/a/a/c;

    .line 188
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 189
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v2, v1, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud$PortalInfoHudStyle;->addressLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {p0, v2, v4}, Lcom/nianticproject/ingress/common/ui/hud/g;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Z)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    .line 190
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 191
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v2, v1, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud$PortalInfoHudStyle;->rangeLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {p0, v2}, Lcom/nianticproject/ingress/common/ui/hud/g;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    .line 192
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPrefWidth()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setWidth(F)V

    .line 203
    :goto_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->f:Lcom/badlogic/gdx/math/Rectangle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->f:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 206
    :goto_2
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPrefHeight()F

    move-result v3

    add-float/2addr v0, v3

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setHeight(F)V

    .line 208
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud$PortalInfoHudStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 209
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    return-object v0

    .line 166
    :cond_0
    const-class v0, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud$PortalInfoHudStyle;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud$PortalInfoHudStyle;

    move-object v1, v0

    goto/16 :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->defaults()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->k()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/a/a/c;->j(F)Lcom/a/a/c;

    .line 196
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-static {v2}, Lcom/nianticproject/ingress/common/ui/hud/g;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V

    const-string/jumbo v0, "default-dialog"

    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->d:Lcom/nianticproject/ingress/gameentity/f;

    const-class v4, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v3, v4}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/ui/hud/g;->b(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v3

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v5, "Portal"

    invoke-direct {v4, v5, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/hud/g;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->k()Lcom/a/a/c;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    invoke-direct {p0, p1, v6, v6}, Lcom/nianticproject/ingress/common/ui/hud/g;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;ZZ)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    iget-object v0, v1, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud$PortalInfoHudStyle;->addressLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {p0, v0, v6}, Lcom/nianticproject/ingress/common/ui/hud/g;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Z)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    const-string/jumbo v0, "default-message-window"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPrefWidth()F

    move-result v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setWidth(F)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPrefHeight()F

    move-result v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setHeight(F)V

    .line 197
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/hud/g;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V

    iget-object v3, v1, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud$PortalInfoHudStyle;->rangeLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {p0, v3}, Lcom/nianticproject/ingress/common/ui/hud/g;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    const-string/jumbo v3, "nav-button"

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 198
    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    .line 199
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 200
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    goto/16 :goto_1

    .line 203
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_2
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/hud/g;->dispose()V

    .line 158
    return-void
.end method

.method protected final b(Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 4
    .parameter

    .prologue
    const/high16 v3, 0x4000

    .line 311
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->f:Lcom/badlogic/gdx/math/Rectangle;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->f:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setY(F)V

    .line 313
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->f:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setX(F)V

    .line 314
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->f:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setWidth(F)V

    .line 315
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->f:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 320
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setY(F)V

    .line 318
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setX(F)V

    goto :goto_0
.end method

.method public final dispose()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->c:Lcom/nianticproject/ingress/common/model/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/hud/g;->i:Lcom/nianticproject/ingress/common/model/l;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/model/k;->b(Lcom/nianticproject/ingress/common/model/l;)V

    .line 152
    invoke-super {p0}, Lcom/nianticproject/ingress/common/ui/hud/a;->dispose()V

    .line 153
    return-void
.end method
