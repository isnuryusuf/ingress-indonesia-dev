.class final enum Lcom/nianticproject/ingress/common/missions/cp;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/common/missions/cp;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/common/missions/cp;

.field public static final enum b:Lcom/nianticproject/ingress/common/missions/cp;

.field public static final enum c:Lcom/nianticproject/ingress/common/missions/cp;

.field public static final enum d:Lcom/nianticproject/ingress/common/missions/cp;

.field public static final enum e:Lcom/nianticproject/ingress/common/missions/cp;

.field public static final enum f:Lcom/nianticproject/ingress/common/missions/cp;

.field public static final enum g:Lcom/nianticproject/ingress/common/missions/cp;

.field public static final enum h:Lcom/nianticproject/ingress/common/missions/cp;

.field public static final enum i:Lcom/nianticproject/ingress/common/missions/cp;

.field public static final enum j:Lcom/nianticproject/ingress/common/missions/cp;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final synthetic m:[Lcom/nianticproject/ingress/common/missions/cp;


# instance fields
.field public final k:Lcom/nianticproject/ingress/common/model/a/i;

.field public final l:Lcom/nianticproject/ingress/common/missions/ca;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 32
    new-instance v0, Lcom/nianticproject/ingress/common/missions/cp;

    const-string/jumbo v1, "ADA_INTRO"

    sget-object v2, Lcom/nianticproject/ingress/common/model/a/i;->l:Lcom/nianticproject/ingress/common/model/a/i;

    new-instance v3, Lcom/nianticproject/ingress/common/missions/ae;

    invoke-direct {v3}, Lcom/nianticproject/ingress/common/missions/ae;-><init>()V

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/nianticproject/ingress/common/missions/cp;-><init>(Ljava/lang/String;ILcom/nianticproject/ingress/common/model/a/i;Lcom/nianticproject/ingress/common/missions/ca;)V

    sput-object v0, Lcom/nianticproject/ingress/common/missions/cp;->a:Lcom/nianticproject/ingress/common/missions/cp;

    .line 33
    new-instance v0, Lcom/nianticproject/ingress/common/missions/cp;

    const-string/jumbo v1, "OLD_COLLECT_XM"

    sget-object v2, Lcom/nianticproject/ingress/common/model/a/i;->h:Lcom/nianticproject/ingress/common/model/a/i;

    new-instance v3, Lcom/nianticproject/ingress/common/missions/cz;

    invoke-direct {v3}, Lcom/nianticproject/ingress/common/missions/cz;-><init>()V

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/nianticproject/ingress/common/missions/cp;-><init>(Ljava/lang/String;ILcom/nianticproject/ingress/common/model/a/i;Lcom/nianticproject/ingress/common/missions/ca;)V

    sput-object v0, Lcom/nianticproject/ingress/common/missions/cp;->b:Lcom/nianticproject/ingress/common/missions/cp;

    .line 34
    new-instance v0, Lcom/nianticproject/ingress/common/missions/cp;

    const-string/jumbo v1, "HACK_PORTAL"

    sget-object v2, Lcom/nianticproject/ingress/common/model/a/i;->i:Lcom/nianticproject/ingress/common/model/a/i;

    new-instance v3, Lcom/nianticproject/ingress/common/missions/fb;

    invoke-direct {v3}, Lcom/nianticproject/ingress/common/missions/fb;-><init>()V

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/nianticproject/ingress/common/missions/cp;-><init>(Ljava/lang/String;ILcom/nianticproject/ingress/common/model/a/i;Lcom/nianticproject/ingress/common/missions/ca;)V

    sput-object v0, Lcom/nianticproject/ingress/common/missions/cp;->c:Lcom/nianticproject/ingress/common/missions/cp;

    .line 35
    new-instance v0, Lcom/nianticproject/ingress/common/missions/cp;

    const-string/jumbo v1, "FIRE_XMP"

    sget-object v2, Lcom/nianticproject/ingress/common/model/a/i;->j:Lcom/nianticproject/ingress/common/model/a/i;

    new-instance v3, Lcom/nianticproject/ingress/common/missions/bc;

    invoke-direct {v3}, Lcom/nianticproject/ingress/common/missions/bc;-><init>()V

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/nianticproject/ingress/common/missions/cp;-><init>(Ljava/lang/String;ILcom/nianticproject/ingress/common/model/a/i;Lcom/nianticproject/ingress/common/missions/ca;)V

    sput-object v0, Lcom/nianticproject/ingress/common/missions/cp;->d:Lcom/nianticproject/ingress/common/missions/cp;

    .line 36
    new-instance v0, Lcom/nianticproject/ingress/common/missions/cp;

    const-string/jumbo v1, "DEPLOY_RESONATOR"

    sget-object v2, Lcom/nianticproject/ingress/common/model/a/i;->k:Lcom/nianticproject/ingress/common/model/a/i;

    new-instance v3, Lcom/nianticproject/ingress/common/missions/av;

    invoke-direct {v3}, Lcom/nianticproject/ingress/common/missions/av;-><init>()V

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/nianticproject/ingress/common/missions/cp;-><init>(Ljava/lang/String;ILcom/nianticproject/ingress/common/model/a/i;Lcom/nianticproject/ingress/common/missions/ca;)V

    sput-object v0, Lcom/nianticproject/ingress/common/missions/cp;->e:Lcom/nianticproject/ingress/common/missions/cp;

    .line 37
    new-instance v0, Lcom/nianticproject/ingress/common/missions/cp;

    const-string/jumbo v1, "PREPARE_PORTAL"

    const/4 v2, 0x5

    sget-object v3, Lcom/nianticproject/ingress/common/model/a/i;->m:Lcom/nianticproject/ingress/common/model/a/i;

    new-instance v4, Lcom/nianticproject/ingress/common/missions/dg;

    invoke-direct {v4}, Lcom/nianticproject/ingress/common/missions/dg;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/common/missions/cp;-><init>(Ljava/lang/String;ILcom/nianticproject/ingress/common/model/a/i;Lcom/nianticproject/ingress/common/missions/ca;)V

    sput-object v0, Lcom/nianticproject/ingress/common/missions/cp;->f:Lcom/nianticproject/ingress/common/missions/cp;

    .line 38
    new-instance v0, Lcom/nianticproject/ingress/common/missions/cp;

    const-string/jumbo v1, "LINK"

    const/4 v2, 0x6

    sget-object v3, Lcom/nianticproject/ingress/common/model/a/i;->n:Lcom/nianticproject/ingress/common/model/a/i;

    new-instance v4, Lcom/nianticproject/ingress/common/missions/bn;

    invoke-direct {v4}, Lcom/nianticproject/ingress/common/missions/bn;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/common/missions/cp;-><init>(Ljava/lang/String;ILcom/nianticproject/ingress/common/model/a/i;Lcom/nianticproject/ingress/common/missions/ca;)V

    sput-object v0, Lcom/nianticproject/ingress/common/missions/cp;->g:Lcom/nianticproject/ingress/common/missions/cp;

    .line 39
    new-instance v0, Lcom/nianticproject/ingress/common/missions/cp;

    const-string/jumbo v1, "REGION"

    const/4 v2, 0x7

    sget-object v3, Lcom/nianticproject/ingress/common/model/a/i;->o:Lcom/nianticproject/ingress/common/model/a/i;

    new-instance v4, Lcom/nianticproject/ingress/common/missions/dx;

    invoke-direct {v4}, Lcom/nianticproject/ingress/common/missions/dx;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/common/missions/cp;-><init>(Ljava/lang/String;ILcom/nianticproject/ingress/common/model/a/i;Lcom/nianticproject/ingress/common/missions/ca;)V

    sput-object v0, Lcom/nianticproject/ingress/common/missions/cp;->h:Lcom/nianticproject/ingress/common/missions/cp;

    .line 42
    new-instance v0, Lcom/nianticproject/ingress/common/missions/cp;

    const-string/jumbo v1, "COLLECT_XM"

    const/16 v2, 0x8

    sget-object v3, Lcom/nianticproject/ingress/common/model/a/i;->h:Lcom/nianticproject/ingress/common/model/a/i;

    new-instance v4, Lcom/nianticproject/ingress/common/missions/fh;

    invoke-direct {v4}, Lcom/nianticproject/ingress/common/missions/fh;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/common/missions/cp;-><init>(Ljava/lang/String;ILcom/nianticproject/ingress/common/model/a/i;Lcom/nianticproject/ingress/common/missions/ca;)V

    sput-object v0, Lcom/nianticproject/ingress/common/missions/cp;->i:Lcom/nianticproject/ingress/common/missions/cp;

    .line 44
    new-instance v0, Lcom/nianticproject/ingress/common/missions/cp;

    const-string/jumbo v1, "TUTORIAL"

    const/16 v2, 0x9

    sget-object v3, Lcom/nianticproject/ingress/common/model/a/i;->p:Lcom/nianticproject/ingress/common/model/a/i;

    new-instance v4, Lcom/nianticproject/ingress/common/missions/tutorial/z;

    invoke-direct {v4}, Lcom/nianticproject/ingress/common/missions/tutorial/z;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/common/missions/cp;-><init>(Ljava/lang/String;ILcom/nianticproject/ingress/common/model/a/i;Lcom/nianticproject/ingress/common/missions/ca;)V

    sput-object v0, Lcom/nianticproject/ingress/common/missions/cp;->j:Lcom/nianticproject/ingress/common/missions/cp;

    .line 31
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/nianticproject/ingress/common/missions/cp;

    sget-object v1, Lcom/nianticproject/ingress/common/missions/cp;->a:Lcom/nianticproject/ingress/common/missions/cp;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticproject/ingress/common/missions/cp;->b:Lcom/nianticproject/ingress/common/missions/cp;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nianticproject/ingress/common/missions/cp;->c:Lcom/nianticproject/ingress/common/missions/cp;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nianticproject/ingress/common/missions/cp;->d:Lcom/nianticproject/ingress/common/missions/cp;

    aput-object v1, v0, v8

    sget-object v1, Lcom/nianticproject/ingress/common/missions/cp;->e:Lcom/nianticproject/ingress/common/missions/cp;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/nianticproject/ingress/common/missions/cp;->f:Lcom/nianticproject/ingress/common/missions/cp;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nianticproject/ingress/common/missions/cp;->g:Lcom/nianticproject/ingress/common/missions/cp;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nianticproject/ingress/common/missions/cp;->h:Lcom/nianticproject/ingress/common/missions/cp;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nianticproject/ingress/common/missions/cp;->i:Lcom/nianticproject/ingress/common/missions/cp;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nianticproject/ingress/common/missions/cp;->j:Lcom/nianticproject/ingress/common/missions/cp;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticproject/ingress/common/missions/cp;->m:[Lcom/nianticproject/ingress/common/missions/cp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/nianticproject/ingress/common/model/a/i;Lcom/nianticproject/ingress/common/missions/ca;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/common/model/a/i;",
            "Lcom/nianticproject/ingress/common/missions/ca;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput-object p3, p0, Lcom/nianticproject/ingress/common/missions/cp;->k:Lcom/nianticproject/ingress/common/model/a/i;

    .line 53
    iput-object p4, p0, Lcom/nianticproject/ingress/common/missions/cp;->l:Lcom/nianticproject/ingress/common/missions/ca;

    .line 54
    invoke-static {}, Lcom/nianticproject/ingress/common/missions/co;->b()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/common/missions/cp;
    .locals 1
    .parameter

    .prologue
    .line 31
    const-class v0, Lcom/nianticproject/ingress/common/missions/cp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/missions/cp;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/common/missions/cp;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/nianticproject/ingress/common/missions/cp;->m:[Lcom/nianticproject/ingress/common/missions/cp;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/common/missions/cp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/common/missions/cp;

    return-object v0
.end method
