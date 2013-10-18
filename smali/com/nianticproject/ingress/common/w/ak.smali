.class public final Lcom/nianticproject/ingress/common/w/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/c/ba;

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticproject/ingress/common/c/ba;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final c:[Lcom/nianticproject/ingress/common/c/ba;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 24
    sget-object v0, Lcom/nianticproject/ingress/common/c/ba;->dY:Lcom/nianticproject/ingress/common/c/ba;

    sput-object v0, Lcom/nianticproject/ingress/common/w/ak;->a:Lcom/nianticproject/ingress/common/c/ba;

    .line 27
    const/16 v0, 0x64

    new-array v0, v0, [Ljava/util/ArrayList;

    new-array v1, v5, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v2, Lcom/nianticproject/ingress/common/w/ak;->a:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    aput-object v1, v0, v4

    new-array v1, v5, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v2, Lcom/nianticproject/ingress/common/c/ba;->cK:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    aput-object v1, v0, v5

    new-array v1, v5, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v2, Lcom/nianticproject/ingress/common/c/ba;->cL:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    aput-object v1, v0, v6

    new-array v1, v5, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v2, Lcom/nianticproject/ingress/common/c/ba;->cM:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    aput-object v1, v0, v7

    new-array v1, v5, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v2, Lcom/nianticproject/ingress/common/c/ba;->cN:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v5, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cO:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v5, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cP:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v5, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cQ:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v5, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cR:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v5, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cS:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v5, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cT:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v5, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cU:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v5, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cV:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v5, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cW:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v5, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cX:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v5, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cY:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v5, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cZ:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v5, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->da:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v5, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->db:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v5, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dc:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v5, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dd:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dd:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cK:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dd:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cL:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dd:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cM:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dd:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cN:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v5, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->de:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dd:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cP:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dd:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cQ:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dd:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cR:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dd:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cS:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v5, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->df:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->df:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cK:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->df:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cL:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->df:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cM:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->df:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cN:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->df:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cO:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->df:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cP:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->df:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cQ:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->df:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cR:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->df:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cS:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v5, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dg:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dg:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cK:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dg:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cL:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dg:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cM:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dg:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cN:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dg:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cO:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dg:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cP:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dg:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cQ:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dg:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cR:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dg:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cS:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v5, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dh:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dh:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cK:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dh:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cL:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dh:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cM:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dh:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cN:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dh:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cO:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dh:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cP:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dh:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cQ:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dh:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cR:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dh:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cS:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v5, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->di:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->di:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cK:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->di:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cL:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->di:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cM:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->di:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cN:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->di:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cO:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->di:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cP:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->di:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cQ:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->di:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cR:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->di:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cS:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-array v2, v5, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dj:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dj:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cK:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dj:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cL:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dj:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cM:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dj:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cN:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-array v2, v5, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dk:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dj:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cP:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dj:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cQ:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dj:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cR:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dj:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cS:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-array v2, v5, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dl:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dl:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cK:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dl:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cL:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dl:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cM:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dl:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cN:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dl:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cO:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dl:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cP:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dl:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cQ:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dl:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cR:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dl:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cS:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-array v2, v5, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dm:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dm:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cK:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dm:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cL:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dm:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cM:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dm:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cN:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dm:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cO:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dm:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cP:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dm:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cQ:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dm:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cR:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-array v2, v6, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dm:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->cS:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/w/ak;->b:Ljava/util/List;

    .line 129
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v1, Lcom/nianticproject/ingress/common/c/ba;->dn:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/ingress/common/c/ba;->do:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticproject/ingress/common/c/ba;->dp:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nianticproject/ingress/common/c/ba;->dq:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nianticproject/ingress/common/c/ba;->dr:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/nianticproject/ingress/common/c/ba;->ds:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nianticproject/ingress/common/c/ba;->dt:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nianticproject/ingress/common/c/ba;->du:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nianticproject/ingress/common/c/ba;->dv:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticproject/ingress/common/w/ak;->c:[Lcom/nianticproject/ingress/common/c/ba;

    return-void
.end method

.method public static a(D)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/c/ba;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/nianticproject/ingress/common/w/ak;->a(DI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(DI)Ljava/util/List;
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DI)",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/c/ba;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    const-wide/high16 v6, 0x4059

    .line 165
    cmpl-double v0, p0, v8

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 166
    const-wide v3, 0x408f380000000000L

    cmpg-double v0, p0, v3

    if-gtz v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/a/a/an;->a(Z)V

    .line 167
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v5

    .line 170
    cmpl-double v0, p0, v6

    if-ltz v0, :cond_4

    .line 171
    div-double v0, p0, v6

    double-to-int v0, v0

    .line 173
    sget-object v1, Lcom/nianticproject/ingress/common/w/ak;->c:[Lcom/nianticproject/ingress/common/c/ba;

    add-int/lit8 v3, v0, -0x1

    aget-object v1, v1, v3

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    int-to-double v0, v0

    mul-double/2addr v0, v6

    sub-double v3, p0, v0

    .line 181
    :goto_2
    cmpl-double v0, v3, v8

    if-lez v0, :cond_2

    .line 182
    double-to-int v1, v3

    .line 183
    if-lez v1, :cond_3

    .line 184
    sget-object v0, Lcom/nianticproject/ingress/common/w/ak;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 185
    int-to-double v0, v1

    sub-double v0, v3, v0

    .line 191
    :goto_3
    const-wide/high16 v3, 0x4024

    int-to-double v6, p2

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    .line 193
    mul-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 194
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_2

    .line 195
    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dz:Lcom/nianticproject/ingress/common/c/ba;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 199
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v3, v1

    :goto_4
    if-ge v2, v3, :cond_2

    aget-char v0, v1, v2

    .line 200
    invoke-static {v0}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v0

    .line 201
    if-lez v0, :cond_2

    .line 202
    sget-object v4, Lcom/nianticproject/ingress/common/w/ak;->b:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_0
    move v0, v2

    .line 165
    goto :goto_0

    :cond_1
    move v1, v2

    .line 166
    goto :goto_1

    .line 210
    :cond_2
    return-object v5

    :cond_3
    move-wide v0, v3

    goto :goto_3

    :cond_4
    move-wide v3, p0

    goto :goto_2
.end method
