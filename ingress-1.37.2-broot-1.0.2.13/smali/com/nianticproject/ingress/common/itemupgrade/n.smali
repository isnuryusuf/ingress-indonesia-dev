.class public final Lcom/nianticproject/ingress/common/itemupgrade/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/itemupgrade/o;


# instance fields
.field protected final a:Lcom/nianticproject/ingress/common/h/l;

.field protected final b:Lcom/nianticproject/ingress/common/model/k;

.field protected final c:Lcom/nianticproject/ingress/common/ui/ad;

.field protected d:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field private final e:I

.field private f:Lcom/nianticproject/ingress/gameentity/f;

.field private g:Lcom/badlogic/gdx/graphics/Texture;

.field private h:Lcom/nianticproject/ingress/common/itemupgrade/UpgradeProgressDialog;

.field private i:Z

.field private j:F


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/gameentity/f;ILcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/ui/ad;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const v0, 0x7f7fffff

    iput v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/n;->j:F

    .line 72
    invoke-static {p4}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/h/l;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/n;->a:Lcom/nianticproject/ingress/common/h/l;

    .line 73
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/model/k;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/n;->b:Lcom/nianticproject/ingress/common/model/k;

    .line 74
    invoke-static {p5}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/ad;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/n;->c:Lcom/nianticproject/ingress/common/ui/ad;

    .line 75
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/n;->f:Lcom/nianticproject/ingress/gameentity/f;

    .line 76
    iput p2, p0, Lcom/nianticproject/ingress/common/itemupgrade/n;->e:I

    .line 78
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    .line 79
    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-interface {v0, p2}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getLinkedMod(I)Lcom/nianticproject/ingress/shared/Mod;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 13
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/n;->g:Lcom/badlogic/gdx/graphics/Texture;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    .line 106
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/n;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 109
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/n;->f:Lcom/nianticproject/ingress/gameentity/f;

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    iget v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/n;->e:I

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getLinkedMod(I)Lcom/nianticproject/ingress/shared/Mod;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/shared/Mod;->buildModResource()Lcom/nianticproject/ingress/gameentity/components/ModResource;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/ModResource;->getResourceType()Lcom/nianticproject/ingress/shared/af;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/gameentity/g;->b(Lcom/nianticproject/ingress/shared/af;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/n;->g:Lcom/badlogic/gdx/graphics/Texture;

    .line 111
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 112
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/n;->f:Lcom/nianticproject/ingress/gameentity/f;

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    iget v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/n;->e:I

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getLinkedMod(I)Lcom/nianticproject/ingress/shared/Mod;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/shared/Mod;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "details-title"

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    new-instance v4, Lcom/nianticproject/ingress/common/ui/widget/w;

    invoke-direct {v4, v1, v0}, Lcom/nianticproject/ingress/common/ui/widget/w;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Lcom/nianticproject/ingress/common/ui/widget/w;->a(I)V

    .line 113
    const/high16 v0, 0x3f00

    invoke-static {v0}, Lcom/a/a/e;->b(F)Lcom/a/a/e;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/nianticproject/ingress/common/ui/widget/w;->padLeft(Lcom/a/a/e;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 114
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/itemupgrade/n;->g:Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v2, v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    sget-object v2, Lcom/badlogic/gdx/utils/Scaling;->none:Lcom/badlogic/gdx/utils/Scaling;

    const/4 v5, 0x1

    invoke-direct {v0, v1, v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/utils/Scaling;I)V

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->i()Lcom/a/a/c;

    .line 116
    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 117
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/n;->f:Lcom/nianticproject/ingress/gameentity/f;

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/n;->f:Lcom/nianticproject/ingress/gameentity/f;

    const-class v2, Lcom/nianticproject/ingress/gameentity/components/Modable;

    invoke-interface {v1, v2}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/components/Modable;

    new-instance v2, Lcom/nianticproject/ingress/gameentity/components/UpgradedModable;

    const/4 v6, 0x0

    iget v7, p0, Lcom/nianticproject/ingress/common/itemupgrade/n;->e:I

    invoke-direct {v2, v1, v6, v7}, Lcom/nianticproject/ingress/gameentity/components/UpgradedModable;-><init>(Lcom/nianticproject/ingress/gameentity/components/Modable;Lcom/nianticproject/ingress/gameentity/components/ModResource;I)V

    iget v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/n;->e:I

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getLinkedMod(I)Lcom/nianticproject/ingress/shared/Mod;

    move-result-object v1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/n;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v2, "mod-details-stats"

    const-class v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v0, v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->defaults()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->k()Lcom/a/a/c;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v8, "Owner: "

    invoke-direct {v7, v8, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    iget-object v7, p0, Lcom/nianticproject/ingress/common/itemupgrade/n;->f:Lcom/nianticproject/ingress/gameentity/f;

    invoke-static {v7}, Lcom/nianticproject/ingress/gameentity/components/b;->a(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/shared/ai;

    move-result-object v7

    new-instance v8, Lcom/nianticproject/ingress/common/ui/widget/ah;

    iget-object v9, p0, Lcom/nianticproject/ingress/common/itemupgrade/n;->a:Lcom/nianticproject/ingress/common/h/l;

    invoke-interface {v1}, Lcom/nianticproject/ingress/shared/Mod;->getInstallingUser()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v0, v10, v7}, Lcom/nianticproject/ingress/common/ui/widget/ah;-><init>(Lcom/nianticproject/ingress/common/h/l;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/String;Lcom/nianticproject/ingress/shared/ai;)V

    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/a/a/c;->o()Lcom/a/a/c;

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-interface {v1}, Lcom/nianticproject/ingress/shared/Mod;->getStatModifiers()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v2, v9, v11

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nianticproject/ingress/gameentity/components/m;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/gameentity/components/m;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/nianticproject/ingress/common/ui/c;->a()Lcom/nianticproject/ingress/common/ui/c;

    move-result-object v11

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Enum;

    invoke-virtual {v11, v2}, Lcom/nianticproject/ingress/common/ui/c;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v10, " "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nianticproject/ingress/gameentity/components/m;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Lcom/nianticproject/ingress/gameentity/components/m;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->k()Lcom/a/a/c;

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    goto :goto_1

    .line 105
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 117
    :cond_2
    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->j()Lcom/a/a/c;

    move-result-object v0

    const v1, 0x3ca3d70a

    invoke-static {v1}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->e(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v0

    const v1, 0x3d75c28f

    invoke-static {v1}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->f(Lcom/a/a/e;)Lcom/a/a/c;

    .line 120
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 121
    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/c;->b(Ljava/lang/Integer;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->k()Lcom/a/a/c;

    .line 122
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 123
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    const v2, 0x3d4ccccd

    invoke-static {v2}, Lcom/a/a/e;->b(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/c;->f(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->p()Lcom/a/a/c;

    move-result-object v1

    const v2, 0x3e99999a

    invoke-static {v2}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/c;->a(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v1

    const v2, 0x3d4ccccd

    invoke-static {v2}, Lcom/a/a/e;->b(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/c;->g(Lcom/a/a/e;)Lcom/a/a/c;

    .line 125
    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->j()Lcom/a/a/c;

    .line 126
    iget-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/n;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v2, "transparent-no-outline"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 128
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/n;->i:Z

    .line 130
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->pack()V

    .line 131
    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/model/GameState;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    iget-object v0, p1, Lcom/nianticproject/ingress/common/model/GameState;->gameEntities:Lcom/google/a/c/dh;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/itemupgrade/n;->f:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v3}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/a/c/dh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/n;->f:Lcom/nianticproject/ingress/gameentity/f;

    .line 88
    iget-boolean v3, p0, Lcom/nianticproject/ingress/common/itemupgrade/n;->i:Z

    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/n;->f:Lcom/nianticproject/ingress/gameentity/f;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    and-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/n;->i:Z

    .line 89
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/n;->i:Z

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/n;->f:Lcom/nianticproject/ingress/gameentity/f;

    const-class v3, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0, v3}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    .line 91
    iget-boolean v3, p0, Lcom/nianticproject/ingress/common/itemupgrade/n;->i:Z

    if-eqz v0, :cond_2

    iget v4, p0, Lcom/nianticproject/ingress/common/itemupgrade/n;->e:I

    invoke-interface {v0, v4}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getLinkedMod(I)Lcom/nianticproject/ingress/shared/Mod;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_1
    and-int v0, v3, v1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/n;->i:Z

    .line 94
    :cond_0
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/n;->i:Z

    return v0

    :cond_1
    move v0, v2

    .line 88
    goto :goto_0

    :cond_2
    move v1, v2

    .line 91
    goto :goto_1
.end method

.method public final c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/n;->i:Z

    .line 197
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/n;->h:Lcom/nianticproject/ingress/common/itemupgrade/UpgradeProgressDialog;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    iput-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/n;->h:Lcom/nianticproject/ingress/common/itemupgrade/UpgradeProgressDialog;

    .line 198
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/n;->g:Lcom/badlogic/gdx/graphics/Texture;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    iput-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/n;->g:Lcom/badlogic/gdx/graphics/Texture;

    .line 199
    return-void
.end method
