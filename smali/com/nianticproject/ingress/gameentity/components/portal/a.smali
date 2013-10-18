.class public final Lcom/nianticproject/ingress/gameentity/components/portal/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/a/c/dc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/dc",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 36
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x30

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x38

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x40

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/google/a/c/dc;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/dc;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/gameentity/components/portal/a;->a:Lcom/google/a/c/dc;

    return-void
.end method

.method public static a(Lcom/nianticproject/ingress/gameentity/f;)I
    .locals 1
    .parameter

    .prologue
    .line 57
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorArray;

    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorArray;

    .line 58
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorArray;->getResonatorLevels()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/gameentity/components/portal/a;->a(Ljava/lang/Iterable;)I

    move-result v0

    return v0
.end method

.method public static a(Lcom/nianticproject/ingress/knobs/XmCostKnobs;Lcom/nianticproject/ingress/shared/ai;ILcom/nianticproject/ingress/shared/ai;)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 199
    sget-object v0, Lcom/nianticproject/ingress/shared/ai;->c:Lcom/nianticproject/ingress/shared/ai;

    if-ne p1, v0, :cond_0

    .line 200
    invoke-virtual {p0, p2}, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->e(I)I

    move-result v0

    .line 204
    :goto_0
    return v0

    .line 201
    :cond_0
    if-ne p1, p3, :cond_1

    .line 202
    invoke-virtual {p0, p2}, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->d(I)I

    move-result v0

    goto :goto_0

    .line 204
    :cond_1
    invoke-virtual {p0, p2}, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->f(I)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Iterable;)I
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p0}, Lcom/nianticproject/ingress/gameentity/components/portal/b;->a(Ljava/lang/Iterable;)I

    move-result v2

    .line 63
    if-nez v2, :cond_0

    .line 66
    const/4 v0, 0x1

    .line 73
    :goto_0
    return v0

    .line 68
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    const/4 v0, 0x7

    if-ge v1, v0, :cond_2

    .line 69
    sget-object v0, Lcom/nianticproject/ingress/gameentity/components/portal/a;->a:Lcom/google/a/c/dc;

    invoke-virtual {v0, v1}, Lcom/google/a/c/dc;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 70
    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    .line 68
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 73
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static a(Lcom/nianticproject/ingress/gameentity/components/Modable;Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 149
    sget-object v0, Lcom/nianticproject/ingress/gameentity/components/m;->i:Lcom/nianticproject/ingress/gameentity/components/m;

    .line 151
    invoke-static {p0, v0}, Lcom/nianticproject/ingress/gameentity/components/g;->a(Lcom/nianticproject/ingress/gameentity/components/Modable;Lcom/nianticproject/ingress/gameentity/components/m;)I

    move-result v1

    .line 152
    if-lez v1, :cond_0

    .line 154
    invoke-static {p0, v0, p1}, Lcom/nianticproject/ingress/gameentity/components/g;->a(Lcom/nianticproject/ingress/gameentity/components/Modable;Lcom/nianticproject/ingress/gameentity/components/m;Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;)J

    move-result-wide v0

    .line 157
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Iterable;Lcom/nianticproject/ingress/gameentity/components/Modable;Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;)J
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/nianticproject/ingress/gameentity/components/Modable;",
            "Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;",
            ")J"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x3e8

    const-wide/high16 v4, 0x4010

    .line 94
    invoke-static {p0}, Lcom/nianticproject/ingress/gameentity/components/portal/b;->a(Ljava/lang/Iterable;)I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v4, 0x4024

    mul-double/2addr v0, v4

    double-to-int v0, v0

    int-to-long v4, v0

    .line 95
    sget-object v0, Lcom/nianticproject/ingress/gameentity/components/m;->d:Lcom/nianticproject/ingress/gameentity/components/m;

    invoke-static {p1, v0}, Lcom/nianticproject/ingress/gameentity/components/g;->a(Lcom/nianticproject/ingress/gameentity/components/Modable;Lcom/nianticproject/ingress/gameentity/components/m;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {p1, v0, p2}, Lcom/nianticproject/ingress/gameentity/components/g;->a(Lcom/nianticproject/ingress/gameentity/components/Modable;Lcom/nianticproject/ingress/gameentity/components/m;Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;)J

    move-result-wide v0

    .line 96
    :goto_0
    mul-long/2addr v0, v4

    div-long/2addr v0, v2

    return-wide v0

    :cond_0
    move-wide v0, v2

    .line 95
    goto :goto_0
.end method

.method public static b(Lcom/nianticproject/ingress/gameentity/components/Modable;Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 173
    sget-object v0, Lcom/nianticproject/ingress/gameentity/components/m;->k:Lcom/nianticproject/ingress/gameentity/components/m;

    .line 175
    invoke-static {p0, v0}, Lcom/nianticproject/ingress/gameentity/components/g;->a(Lcom/nianticproject/ingress/gameentity/components/Modable;Lcom/nianticproject/ingress/gameentity/components/m;)I

    move-result v1

    .line 176
    if-lez v1, :cond_0

    .line 178
    invoke-static {p0, v0, p1}, Lcom/nianticproject/ingress/gameentity/components/g;->a(Lcom/nianticproject/ingress/gameentity/components/Modable;Lcom/nianticproject/ingress/gameentity/components/m;Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;)J

    move-result-wide v0

    .line 181
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
