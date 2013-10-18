.class public Lcom/nianticproject/ingress/service/NemesisService;
.super Lcom/nianticproject/ingress/service/core/CoreService;
.source "SourceFile"


# static fields
.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/service/i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Lcom/nianticproject/ingress/NemesisApplication;

.field private f:Lcom/nianticproject/ingress/common/u/ah;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 116
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v0

    .line 119
    sput-object v0, Lcom/nianticproject/ingress/service/NemesisService;->c:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "OP_CODE_ADD_COMM_MESSAGE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/nianticproject/ingress/service/NemesisService;->c:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "OP_CODE_VALIDATE_NICKNAME"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/nianticproject/ingress/service/NemesisService;->c:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "OP_CODE_PERSIST_NICKNAME"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/nianticproject/ingress/service/NemesisService;->c:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "OP_CODE_LOG_TO_SERVER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/nianticproject/ingress/service/NemesisService;->c:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "OP_CODE_GET_SPACE2FACE_TEXTURE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/nianticproject/ingress/service/NemesisService;->c:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "OP_CODE_LOAD_CONTACT_PHOTO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/nianticproject/ingress/service/NemesisService;->c:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "OP_CODE_DOWNLOAD_PHOTO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/nianticproject/ingress/service/NemesisService;->c:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "OP_CODE_ENQUEUE_PORTAL_CURATION"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/nianticproject/ingress/service/NemesisService;->c:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "OP_CODE_LOAD_PHOTO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/nianticproject/ingress/service/NemesisService;->c:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "OP_CODE_MAKE_PHOTO_COPY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/nianticproject/ingress/service/NemesisService;->c:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "OP_CODE_DELETE_PHOTO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/nianticproject/ingress/service/NemesisService;->c:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "OP_CODE_READ_PHOTO_GEOLOCATION"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/nianticproject/ingress/service/NemesisService;->c:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "OP_CODE_CREATE_NEW_FILE_FOR_CAMERA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/nianticproject/ingress/service/NemesisService;->c:Ljava/util/Map;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "OP_CODE_ROTATE_PHOTO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/nianticproject/ingress/service/NemesisService;->c:Ljava/util/Map;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "OP_CODE_GET_PORTAL_IMAGES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/nianticproject/ingress/service/NemesisService;->c:Ljava/util/Map;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "OP_CODE_VOTE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/service/NemesisService;->d:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/nianticproject/ingress/service/core/CoreService;-><init>()V

    .line 172
    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 1
    .parameter

    .prologue
    .line 396
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/service/NemesisService;->b(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/service/NemesisService;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;J)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 407
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/service/NemesisService;->b(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 408
    const-string/jumbo v1, "photoId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 409
    invoke-static {p0, v0}, Lcom/nianticproject/ingress/service/NemesisService;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 485
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/service/NemesisService;->b(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 486
    const-string/jumbo v1, "photo_uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 487
    invoke-static {p0, v0}, Lcom/nianticproject/ingress/service/NemesisService;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;I)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 531
    const/16 v0, 0xd

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/service/NemesisService;->b(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 532
    const-string/jumbo v1, "photo_uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 533
    const-string/jumbo v1, "size"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 534
    const-string/jumbo v1, "precise"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 535
    const-string/jumbo v1, "rotation"

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 536
    const-string/jumbo v1, "load"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 537
    invoke-static {p0, v0}, Lcom/nianticproject/ingress/service/NemesisService;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;IJ)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 455
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/service/NemesisService;->b(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 456
    const-string/jumbo v1, "photo_uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 457
    const-string/jumbo v1, "size"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 458
    const-string/jumbo v1, "precise"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 459
    const-string/jumbo v1, "file_size"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 460
    const-string/jumbo v1, "make_public_copy"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 461
    invoke-static {p0, v0}, Lcom/nianticproject/ingress/service/NemesisService;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/h/a/a/c;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 355
    invoke-static {p0}, Lcom/nianticproject/ingress/g/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-static {p1, p0}, Lcom/nianticproject/ingress/g/e;->a(Lcom/google/h/a/a/c;Landroid/content/Context;)[B

    move-result-object v1

    .line 358
    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/nianticproject/ingress/service/NemesisService;->b(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v2

    .line 359
    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    const-string/jumbo v0, "postData"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 362
    invoke-static {p0, v2}, Lcom/nianticproject/ingress/service/NemesisService;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Lcom/nianticproject/ingress/common/b;Ljava/lang/String;Ljava/util/List;ZJIZ)I
    .locals 4
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
            "Landroid/content/Context;",
            "Lcom/nianticproject/ingress/common/b;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/plext/c;",
            ">;ZJIZ)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 329
    :try_start_0
    const-string/jumbo v1, "NemesisService.addCommMessage"

    invoke-static {v1, p2}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/nianticproject/ingress/service/NemesisService;->b(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    .line 331
    const-string/jumbo v2, "channel"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 332
    const-string/jumbo v2, "text"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    if-eqz p3, :cond_0

    .line 334
    const-string/jumbo v2, "markup"

    invoke-static {p3}, Lcom/nianticproject/ingress/content/a;->a(Ljava/util/List;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 336
    :cond_0
    const-string/jumbo v2, "temporary"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 337
    const-string/jumbo v2, "time"

    invoke-virtual {v1, v2, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 338
    const-string/jumbo v2, "duration"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    const-string/jumbo v2, "guid"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string/jumbo v2, "factionOnly"

    if-eqz p8, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    invoke-static {p0, v1}, Lcom/nianticproject/ingress/service/NemesisService;->a(Landroid/content/Context;Landroid/content/Intent;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 343
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public static a(Landroid/content/Context;Lcom/nianticproject/ingress/curation/PortalCurationTask;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 433
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/service/NemesisService;->b(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 434
    const-string/jumbo v1, "request"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 435
    invoke-static {p0, v0}, Lcom/nianticproject/ingress/service/NemesisService;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 373
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/nianticproject/ingress/service/h;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 374
    invoke-static {p0, v0}, Lcom/nianticproject/ingress/service/NemesisService;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 551
    const-string/jumbo v0, "Portal GUID is null!"

    invoke-static {p1, v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    if-lez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "max items per page must be 1 or more"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 554
    const/16 v0, 0xe

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/service/NemesisService;->b(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 555
    const-string/jumbo v1, "guid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    const-string/jumbo v1, "count"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 557
    const-string/jumbo v1, "cursor"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 558
    invoke-static {p0, v0}, Lcom/nianticproject/ingress/service/NemesisService;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0

    .line 552
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 572
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "Portal GUID is null or empty!"

    invoke-static {v0, v3}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 573
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    const-string/jumbo v0, "Photo GUID is null or empty!"

    invoke-static {v1, v0}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 575
    const/16 v0, 0xf

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/service/NemesisService;->b(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 576
    const-string/jumbo v1, "guid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    const-string/jumbo v1, "photoId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 578
    const-string/jumbo v1, "add_vote"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 579
    invoke-static {p0, v0}, Lcom/nianticproject/ingress/service/NemesisService;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0

    :cond_0
    move v0, v2

    .line 572
    goto :goto_0

    :cond_1
    move v1, v2

    .line 573
    goto :goto_1
.end method

.method static synthetic a(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-static {p0, p1}, Lcom/nianticproject/ingress/service/NemesisService;->b(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/nianticproject/ingress/service/i;)V
    .locals 1
    .parameter

    .prologue
    .line 250
    const-string/jumbo v0, "registerListener"

    invoke-static {v0}, Lcom/nianticproject/ingress/ec;->a(Ljava/lang/String;)V

    .line 251
    sget-object v0, Lcom/nianticproject/ingress/service/NemesisService;->d:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 252
    return-void
.end method

.method public static b(Landroid/content/Context;)I
    .locals 1
    .parameter

    .prologue
    .line 510
    const/16 v0, 0xc

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/service/NemesisService;->b(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/service/NemesisService;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 498
    const/16 v0, 0xb

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/service/NemesisService;->b(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 499
    const-string/jumbo v1, "photo_uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 500
    invoke-static {p0, v0}, Lcom/nianticproject/ingress/service/NemesisService;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 385
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/nianticproject/ingress/service/h;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 386
    invoke-static {p0, v0}, Lcom/nianticproject/ingress/service/NemesisService;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 304
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nianticproject/ingress/service/NemesisService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 305
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Operation codes must not be negative!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string/jumbo v1, "CoreService.op_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method private static b(Landroid/content/Context;J)Landroid/graphics/Bitmap;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 271
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 272
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "data15"

    aput-object v0, v2, v4

    .line 273
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 274
    if-nez v1, :cond_0

    .line 290
    :goto_0
    return-object v3

    .line 279
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 281
    if-nez v0, :cond_1

    .line 282
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 285
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 288
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static b(Lcom/nianticproject/ingress/service/i;)V
    .locals 1
    .parameter

    .prologue
    .line 260
    const-string/jumbo v0, "unregisterListener"

    invoke-static {v0}, Lcom/nianticproject/ingress/ec;->a(Ljava/lang/String;)V

    .line 261
    sget-object v0, Lcom/nianticproject/ingress/service/NemesisService;->d:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 262
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 420
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/service/NemesisService;->b(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 421
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    invoke-static {p0, v0}, Lcom/nianticproject/ingress/service/NemesisService;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method static synthetic d(Landroid/content/Intent;)I
    .locals 2
    .parameter

    .prologue
    .line 93
    const-string/jumbo v0, "CoreService.op_code"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic e(Landroid/content/Intent;)I
    .locals 2
    .parameter

    .prologue
    .line 93
    const-string/jumbo v0, "CoreService.request_id"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic f(Landroid/content/Intent;)I
    .locals 2
    .parameter

    .prologue
    .line 93
    const-string/jumbo v0, "CoreService.request_id"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic g(Landroid/content/Intent;)I
    .locals 2
    .parameter

    .prologue
    .line 93
    const-string/jumbo v0, "CoreService.request_id"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static j(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 1122
    const-string/jumbo v0, "CoreService.request_id"

    invoke-virtual {p0, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1123
    const-string/jumbo v0, "photo_uri"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1124
    const-string/jumbo v1, "photo_copy_uri"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 1125
    const-string/jumbo v2, "size"

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1126
    const-string/jumbo v2, "photo_error"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/nianticproject/ingress/o/h;

    .line 1127
    const-string/jumbo v3, "photo"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 1128
    sget-object v4, Lcom/nianticproject/ingress/o/h;->a:Lcom/nianticproject/ingress/o/h;

    if-ne v2, v4, :cond_0

    .line 1129
    sget-object v2, Lcom/nianticproject/ingress/service/NemesisService;->d:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nianticproject/ingress/service/i;

    .line 1130
    invoke-interface {v2, v0, v1, v3}, Lcom/nianticproject/ingress/service/i;->a(Landroid/net/Uri;Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1133
    :cond_0
    sget-object v1, Lcom/nianticproject/ingress/service/NemesisService;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/service/i;

    .line 1134
    invoke-interface {v1, v0, v2}, Lcom/nianticproject/ingress/service/i;->a(Landroid/net/Uri;Lcom/nianticproject/ingress/o/h;)V

    goto :goto_1

    .line 1137
    :cond_1
    return-void
.end method

.method private k(Landroid/content/Intent;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1145
    const-string/jumbo v0, "photo_uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 1146
    const-string/jumbo v0, "size"

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1147
    const-string/jumbo v0, "precise"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1148
    const-string/jumbo v0, "file_size"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1149
    const-string/jumbo v0, "make_public_copy"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    move-object v0, p0

    .line 1151
    :try_start_0
    invoke-static/range {v0 .. v6}, Lcom/nianticproject/ingress/o/g;->a(Landroid/content/Context;Landroid/net/Uri;IZJZ)Lcom/nianticproject/ingress/o/i;

    move-result-object v0

    .line 1153
    const-string/jumbo v1, "photo_copy_uri"

    iget-object v2, v0, Lcom/nianticproject/ingress/o/i;->c:Landroid/net/Uri;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1154
    const-string/jumbo v1, "photo"

    iget-object v2, v0, Lcom/nianticproject/ingress/o/i;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1155
    const-string/jumbo v1, "photo_error"

    iget-object v0, v0, Lcom/nianticproject/ingress/o/i;->d:Lcom/nianticproject/ingress/o/h;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1159
    :goto_0
    return-void

    .line 1156
    :catch_0
    move-exception v0

    .line 1157
    iget-object v1, p0, Lcom/nianticproject/ingress/service/NemesisService;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "IOException while trying to load a photo"

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 601
    const-string/jumbo v0, "NemesisService"

    return-object v0
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 6
    .parameter

    .prologue
    .line 606
    const-string/jumbo v0, "CoreService.op_code"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 607
    iget-object v1, p0, Lcom/nianticproject/ingress/service/NemesisService;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "Processing %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/nianticproject/ingress/service/NemesisService;->c:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 608
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/service/NemesisService;->i(Landroid/content/Intent;)V

    .line 609
    return-void
.end method

.method public final b(Landroid/content/Intent;)V
    .locals 12
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 614
    :try_start_0
    const-string/jumbo v0, "CoreService.op_code"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 615
    iget-object v1, p0, Lcom/nianticproject/ingress/service/NemesisService;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "Processing %s on a threadpool thread"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/nianticproject/ingress/service/NemesisService;->c:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    packed-switch v0, :pswitch_data_0

    .line 915
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/service/NemesisService;->h(Landroid/content/Intent;)V

    .line 916
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 917
    :goto_1
    return-void

    .line 619
    :pswitch_0
    :try_start_1
    const-string/jumbo v0, "NemesisService.processIntent(AddCommMessage)"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 620
    const-string/jumbo v0, "channel"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/b;

    .line 621
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 623
    const-string/jumbo v0, "markup"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 624
    const-string/jumbo v0, "markup"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 628
    :cond_1
    const-string/jumbo v0, "temporary"

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 629
    const-string/jumbo v0, "time"

    const-wide/16 v5, -0x1

    invoke-virtual {p1, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 630
    const-string/jumbo v0, "duration"

    const/4 v7, -0x1

    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 631
    const-string/jumbo v0, "guid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 632
    const-string/jumbo v0, "factionOnly"

    const/4 v11, 0x0

    invoke-virtual {p1, v0, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v10, :cond_2

    .line 633
    :goto_2
    if-eqz v10, :cond_3

    sget v9, Lcom/nianticproject/ingress/common/a;->b:I

    :goto_3
    move-object v0, p0

    .line 634
    invoke-static/range {v0 .. v9}, Lcom/nianticproject/ingress/content/a;->a(Landroid/content/Context;Lcom/nianticproject/ingress/common/b;Ljava/lang/String;[BZJILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 915
    :catchall_0
    move-exception v0

    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/service/NemesisService;->h(Landroid/content/Intent;)V

    .line 916
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    :cond_2
    move v10, v9

    .line 632
    goto :goto_2

    .line 633
    :cond_3
    :try_start_2
    sget v9, Lcom/nianticproject/ingress/common/a;->c:I

    goto :goto_3

    .line 641
    :pswitch_1
    const-string/jumbo v1, "NemesisService.processIntentThreaded(ValidateNickname)"

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 642
    new-instance v1, Lcom/nianticproject/ingress/service/h;

    invoke-direct {v1, p1}, Lcom/nianticproject/ingress/service/h;-><init>(Landroid/content/Intent;)V

    .line 643
    invoke-virtual {v1}, Lcom/nianticproject/ingress/service/h;->a()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 645
    if-ne v0, v10, :cond_4

    :try_start_3
    invoke-static {v2}, Lcom/nianticproject/ingress/common/u/aj;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/ab;

    move-result-object v0

    .line 648
    :goto_4
    iget-object v2, p0, Lcom/nianticproject/ingress/service/NemesisService;->f:Lcom/nianticproject/ingress/common/u/ah;

    invoke-virtual {v2, v0}, Lcom/nianticproject/ingress/common/u/ah;->a(Lcom/nianticproject/ingress/shared/rpc/ab;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    .line 650
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->g()Z

    move-result v2

    if-nez v2, :cond_5

    .line 652
    invoke-virtual {v1}, Lcom/nianticproject/ingress/service/h;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 658
    :catch_0
    move-exception v0

    .line 659
    :try_start_4
    iget-object v2, p0, Lcom/nianticproject/ingress/service/NemesisService;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v3, "Exception while validating nickname"

    invoke-virtual {v2, v0, v3}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 661
    invoke-virtual {v1}, Lcom/nianticproject/ingress/service/h;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 645
    :cond_4
    :try_start_5
    invoke-static {v2}, Lcom/nianticproject/ingress/common/u/aj;->c(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/ab;

    move-result-object v0

    goto :goto_4

    .line 655
    :cond_5
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/q;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/service/h;->a(Lcom/nianticproject/ingress/shared/q;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 667
    :pswitch_2
    :try_start_6
    const-string/jumbo v0, "NemesisService.processIntentThreaded(LogToServer)"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 668
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 669
    const-string/jumbo v1, "postData"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 670
    invoke-static {v0, v1}, Lcom/nianticproject/ingress/g/e;->a(Ljava/lang/String;[B)I

    goto/16 :goto_0

    .line 675
    :pswitch_3
    const-string/jumbo v0, "NemesisService.processIntentThreaded(GetSpace2FaceTexture)"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lcom/nianticproject/ingress/service/NemesisService;->e:Lcom/nianticproject/ingress/NemesisApplication;

    invoke-static {}, Lcom/nianticproject/ingress/NemesisApplication;->f()Lcom/nianticproject/ingress/common/u/b;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    .line 678
    :try_start_7
    invoke-static {}, Lcom/nianticproject/ingress/ec;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/k/s;->a(Lcom/nianticproject/ingress/common/u/b;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 679
    :catch_1
    move-exception v0

    .line 680
    :try_start_8
    sget-object v1, Lcom/nianticproject/ingress/common/a/b;->e:Lcom/nianticproject/ingress/common/a/b;

    const-string/jumbo v2, "FactionMap"

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/a/a;->a(Lcom/nianticproject/ingress/common/a/b;Ljava/lang/String;)V

    .line 681
    iget-object v1, p0, Lcom/nianticproject/ingress/service/NemesisService;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "exception while getting space2face texture"

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 687
    :pswitch_4
    const-string/jumbo v0, "NemesisService.processIntentThreaded(LoadContactPhoto)"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 688
    const-string/jumbo v0, "photoId"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 689
    invoke-static {p0, v0, v1}, Lcom/nianticproject/ingress/service/NemesisService;->b(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 690
    if-eqz v0, :cond_0

    .line 691
    const-string/jumbo v1, "photo"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 697
    :pswitch_5
    const-string/jumbo v0, "NemesisService.processIntentThreaded(DownloadPhoto)"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 698
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 699
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 700
    iget-object v0, p0, Lcom/nianticproject/ingress/service/NemesisService;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "Load photo with empty URL, skipping"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 915
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/service/NemesisService;->h(Landroid/content/Intent;)V

    .line 916
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto/16 :goto_1

    .line 706
    :cond_6
    :try_start_9
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    move-result-object v3

    .line 711
    :goto_5
    if-eqz v3, :cond_0

    .line 712
    :try_start_a
    const-string/jumbo v0, "photo"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 707
    :catch_2
    move-exception v0

    .line 708
    iget-object v2, p0, Lcom/nianticproject/ingress/service/NemesisService;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Exception while downloading photo: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_5

    .line 718
    :pswitch_6
    const-string/jumbo v0, "NemesisService.processIntentThreaded(EnqueuePortalCuration)"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 719
    const-string/jumbo v0, "request"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/curation/PortalCurationTask;

    .line 720
    invoke-virtual {v0}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->g()Landroid/net/Uri;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v1

    .line 721
    if-eqz v1, :cond_8

    .line 723
    :try_start_b
    invoke-static {p0, v1}, Lcom/nianticproject/ingress/o/g;->e(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 724
    invoke-static {p0, v1}, Lcom/nianticproject/ingress/o/g;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    .line 726
    :cond_7
    invoke-virtual {v0}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->g()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/nianticproject/ingress/o/g;->b(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 727
    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->a(Landroid/net/Uri;)Lcom/nianticproject/ingress/curation/PortalCurationTask;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    move-result-object v0

    .line 734
    :cond_8
    :try_start_c
    invoke-static {p0, v0}, Lcom/nianticproject/ingress/curation/d;->a(Landroid/content/Context;Lcom/nianticproject/ingress/curation/PortalCurationTask;)V

    .line 735
    const-string/jumbo v0, "success"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0

    .line 728
    :catch_3
    move-exception v0

    .line 729
    iget-object v1, p0, Lcom/nianticproject/ingress/service/NemesisService;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "IOException while trying to make a copy of a submitted portal photo"

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 730
    const-string/jumbo v0, "success"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 915
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/service/NemesisService;->h(Landroid/content/Intent;)V

    .line 916
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto/16 :goto_1

    .line 740
    :pswitch_7
    :try_start_d
    const-string/jumbo v0, "NemesisService.processIntentThreaded(LoadPhoto)"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 741
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/service/NemesisService;->k(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 746
    :pswitch_8
    const-string/jumbo v0, "NemesisService.processIntentThreaded(MakePhotoCopy)"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 747
    const-string/jumbo v0, "photo_uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 749
    :try_start_e
    invoke-static {p0, v0}, Lcom/nianticproject/ingress/o/g;->b(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 750
    const-string/jumbo v1, "photo_copy_uri"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 751
    const-string/jumbo v0, "success"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_0

    .line 752
    :catch_4
    move-exception v0

    .line 753
    :try_start_f
    iget-object v1, p0, Lcom/nianticproject/ingress/service/NemesisService;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "IOException while trying to copy a photo to the private directory"

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 754
    const-string/jumbo v0, "success"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0

    .line 760
    :pswitch_9
    const-string/jumbo v0, "NemesisService.processIntentThreaded(DeletePhoto)"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 761
    const-string/jumbo v0, "photo_uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 763
    :try_start_10
    invoke-static {p0, v0}, Lcom/nianticproject/ingress/o/g;->c(Landroid/content/Context;Landroid/net/Uri;)V

    .line 764
    const-string/jumbo v0, "success"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    goto/16 :goto_0

    .line 765
    :catch_5
    move-exception v0

    .line 766
    :try_start_11
    iget-object v1, p0, Lcom/nianticproject/ingress/service/NemesisService;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "IOException while trying to delete a photo in the private directory"

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 767
    const-string/jumbo v0, "success"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0

    .line 773
    :pswitch_a
    const-string/jumbo v0, "NemesisService.processIntentThreaded(PhotoGeolocation)"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 774
    const-string/jumbo v0, "photo_uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 775
    invoke-static {p0, v0}, Lcom/nianticproject/ingress/o/g;->d(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/a/d/u;

    move-result-object v0

    .line 776
    const-string/jumbo v1, "location"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 781
    :pswitch_b
    const-string/jumbo v0, "NemesisService.processIntentThreaded(CreateNewFileForCamera)"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 783
    :try_start_12
    invoke-static {p0}, Lcom/nianticproject/ingress/o/g;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 784
    const-string/jumbo v1, "file"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6

    goto/16 :goto_0

    .line 785
    :catch_6
    move-exception v0

    .line 786
    :try_start_13
    iget-object v1, p0, Lcom/nianticproject/ingress/service/NemesisService;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "IOException while trying to create a new temporary file for the camera"

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 792
    :pswitch_c
    const-string/jumbo v0, "NemesisService.processIntentThreaded(RotatePhoto)"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 793
    const-string/jumbo v0, "photo_uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 794
    const-string/jumbo v1, "rotation"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 795
    invoke-static {p0, v0, v1}, Lcom/nianticproject/ingress/o/g;->a(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 796
    const-string/jumbo v0, "load"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 797
    if-eqz v0, :cond_0

    .line 798
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/service/NemesisService;->k(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 804
    :pswitch_d
    const-string/jumbo v0, "NemesisService.processIntentThreaded(GetPortalImages)"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 805
    const-string/jumbo v0, "guid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 806
    const-string/jumbo v0, "count"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 807
    const-string/jumbo v0, "cursor"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 810
    invoke-static {v2, v4, v5}, Lcom/nianticproject/ingress/common/u/aj;->a(Ljava/lang/String;ILjava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/ab;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    move-result-object v0

    .line 816
    :try_start_14
    iget-object v1, p0, Lcom/nianticproject/ingress/service/NemesisService;->f:Lcom/nianticproject/ingress/common/u/ah;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/u/ah;->a(Lcom/nianticproject/ingress/shared/rpc/ab;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_14 .. :try_end_14} :catch_7

    move-result-object v3

    .line 822
    :goto_6
    if-eqz v3, :cond_b

    .line 824
    :try_start_15
    invoke-virtual {v3}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->e()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 826
    invoke-virtual {v3}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nianticproject/ingress/shared/portal/PortalImagePage;

    .line 827
    iget-object v6, p0, Lcom/nianticproject/ingress/service/NemesisService;->b:Landroid/os/Handler;

    new-instance v0, Lcom/nianticproject/ingress/service/e;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/service/e;-><init>(Lcom/nianticproject/ingress/service/NemesisService;Ljava/lang/String;Lcom/nianticproject/ingress/shared/portal/PortalImagePage;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v0, v9

    .line 846
    :goto_7
    if-eqz v0, :cond_0

    .line 848
    const-string/jumbo v0, "exception"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0

    .line 817
    :catch_7
    move-exception v0

    .line 818
    iget-object v1, p0, Lcom/nianticproject/ingress/service/NemesisService;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v6, "Problem while sending getPortalImages RPC, treating as RpcException"

    invoke-virtual {v1, v0, v6}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_6

    .line 834
    :cond_9
    invoke-virtual {v3}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->g()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 836
    const-string/jumbo v1, "error"

    invoke-virtual {v3}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move v0, v9

    goto :goto_7

    :cond_a
    move v0, v10

    .line 839
    goto :goto_7

    :cond_b
    move v0, v10

    .line 843
    goto :goto_7

    .line 854
    :pswitch_e
    const-string/jumbo v0, "guid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 855
    const-string/jumbo v1, "photoId"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 856
    const-string/jumbo v2, "add_vote"

    const/4 v4, 0x1

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 858
    iget-object v4, p0, Lcom/nianticproject/ingress/service/NemesisService;->b:Landroid/os/Handler;

    new-instance v5, Lcom/nianticproject/ingress/service/f;

    invoke-direct {v5, p0, v0, v1, v2}, Lcom/nianticproject/ingress/service/f;-><init>(Lcom/nianticproject/ingress/service/NemesisService;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 869
    :try_start_16
    iget-object v0, p0, Lcom/nianticproject/ingress/service/NemesisService;->f:Lcom/nianticproject/ingress/common/u/ah;

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/u/aj;->a(Ljava/lang/String;Z)Lcom/nianticproject/ingress/shared/rpc/ab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/u/ah;->a(Lcom/nianticproject/ingress/shared/rpc/ab;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_16 .. :try_end_16} :catch_8

    move-result-object v1

    .line 870
    :try_start_17
    const-string/jumbo v0, "success"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_17 .. :try_end_17} :catch_9

    .line 876
    :goto_8
    if-eqz v1, :cond_0

    .line 877
    :try_start_18
    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 878
    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->g()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 879
    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/rpc/ai;

    .line 880
    sget-object v1, Lcom/nianticproject/ingress/service/g;->a:[I

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/ai;->ordinal()I

    goto/16 :goto_0

    .line 871
    :catch_8
    move-exception v0

    move-object v1, v3

    .line 872
    :goto_9
    iget-object v2, p0, Lcom/nianticproject/ingress/service/NemesisService;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v3, "Problem while sending votePortalImage RPC"

    invoke-virtual {v2, v0, v3}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 873
    const-string/jumbo v0, "success"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_8

    .line 905
    :cond_c
    iget-object v0, p0, Lcom/nianticproject/ingress/service/NemesisService;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "Exception received: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->c()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 906
    const-string/jumbo v0, "success"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto/16 :goto_0

    .line 871
    :catch_9
    move-exception v0

    goto :goto_9

    .line 617
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method protected final c(Landroid/content/Intent;)V
    .locals 9
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 922
    const-string/jumbo v2, "CoreService.op_code"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 923
    const-string/jumbo v3, "CoreService.request_id"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 924
    iget-object v4, p0, Lcom/nianticproject/ingress/service/NemesisService;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v5, "%s processing complete, notifying listeners"

    new-array v6, v0, [Ljava/lang/Object;

    sget-object v7, Lcom/nianticproject/ingress/service/NemesisService;->c:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v4, v5, v6}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 927
    packed-switch v2, :pswitch_data_0

    .line 1103
    :cond_0
    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 1108
    return-void

    .line 929
    :pswitch_1
    :try_start_0
    const-string/jumbo v0, "NemesisService.onIntentProcessed(AddCommMessage)"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1107
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 942
    :pswitch_2
    :try_start_1
    const-string/jumbo v0, "NemesisService.onIntentProcessed(ValidateNickname)"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 943
    new-instance v1, Lcom/nianticproject/ingress/service/h;

    invoke-direct {v1, p1}, Lcom/nianticproject/ingress/service/h;-><init>(Landroid/content/Intent;)V

    .line 944
    sget-object v0, Lcom/nianticproject/ingress/service/NemesisService;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/service/i;

    .line 945
    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/service/h;->a(Lcom/nianticproject/ingress/service/i;)V

    goto :goto_1

    .line 951
    :pswitch_3
    const-string/jumbo v0, "NemesisService.onIntentProcessed(GetSpace2FaceTexture)"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 952
    sget-object v0, Lcom/nianticproject/ingress/service/NemesisService;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_2

    .line 959
    :pswitch_4
    const-string/jumbo v0, "NemesisService.onIntentProcessed(LoadContactPhoto)"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 960
    const-string/jumbo v0, "photoId"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 961
    const-string/jumbo v0, "photo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 962
    if-eqz v0, :cond_1

    .line 963
    sget-object v1, Lcom/nianticproject/ingress/service/NemesisService;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/service/i;

    .line 964
    invoke-interface {v1, v2, v3, v0}, Lcom/nianticproject/ingress/service/i;->a(JLjava/lang/Object;)V

    goto :goto_3

    .line 967
    :cond_1
    sget-object v0, Lcom/nianticproject/ingress/service/NemesisService;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/service/i;

    .line 968
    invoke-interface {v0, v2, v3}, Lcom/nianticproject/ingress/service/i;->a(J)V

    goto :goto_4

    .line 975
    :pswitch_5
    const-string/jumbo v0, "NemesisService.onIntentProcessed(DownloadPhoto)"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 976
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 977
    const-string/jumbo v0, "photo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 978
    if-eqz v0, :cond_2

    .line 979
    sget-object v1, Lcom/nianticproject/ingress/service/NemesisService;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/service/i;

    .line 980
    invoke-interface {v1, v2, v0}, Lcom/nianticproject/ingress/service/i;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_5

    .line 983
    :cond_2
    sget-object v0, Lcom/nianticproject/ingress/service/NemesisService;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/service/i;

    .line 984
    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/service/i;->a(Ljava/lang/String;)V

    goto :goto_6

    .line 991
    :pswitch_6
    const-string/jumbo v0, "NemesisService.onIntentProcessed(EnqueuePortalCuration)"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 997
    :pswitch_7
    const-string/jumbo v0, "NemesisService.onIntentProcessed(LoadPhoto)"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 998
    invoke-static {p1}, Lcom/nianticproject/ingress/service/NemesisService;->j(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1003
    :pswitch_8
    const-string/jumbo v0, "NemesisService.onIntentProcessed(MakePhotoCopy)"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 1004
    const-string/jumbo v0, "photo_uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 1005
    const-string/jumbo v0, "photo_copy_uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 1006
    const-string/jumbo v0, "success"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1007
    if-eqz v0, :cond_3

    .line 1008
    sget-object v0, Lcom/nianticproject/ingress/service/NemesisService;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_7

    .line 1012
    :cond_3
    sget-object v0, Lcom/nianticproject/ingress/service/NemesisService;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_8

    .line 1020
    :pswitch_9
    const-string/jumbo v0, "NemesisService.onIntentProcessed(DeletePhoto)"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 1021
    const-string/jumbo v0, "photo_uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 1022
    const-string/jumbo v0, "success"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1023
    if-eqz v0, :cond_4

    .line 1024
    sget-object v0, Lcom/nianticproject/ingress/service/NemesisService;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_9

    .line 1028
    :cond_4
    sget-object v0, Lcom/nianticproject/ingress/service/NemesisService;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_a

    .line 1036
    :pswitch_a
    const-string/jumbo v0, "NemesisService.onIntentProcessed(ReadPhotoGeolocation)"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 1037
    const-string/jumbo v0, "photo_uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1038
    const-string/jumbo v1, "location"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/google/a/d/u;

    .line 1039
    sget-object v2, Lcom/nianticproject/ingress/service/NemesisService;->d:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nianticproject/ingress/service/i;

    .line 1040
    invoke-interface {v2, v0, v1}, Lcom/nianticproject/ingress/service/i;->a(Landroid/net/Uri;Lcom/google/a/d/u;)V

    goto :goto_b

    .line 1046
    :pswitch_b
    const-string/jumbo v0, "NemesisService.onIntentProcessed(CreateNewFileForCamera)"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 1047
    const-string/jumbo v0, "file"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 1048
    sget-object v1, Lcom/nianticproject/ingress/service/NemesisService;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/service/i;

    .line 1049
    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/service/i;->a(Ljava/io/File;)V

    goto :goto_c

    .line 1055
    :pswitch_c
    const-string/jumbo v0, "NemesisService.onIntentProcessed(RotatePhoto)"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 1056
    const-string/jumbo v0, "photo_uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1057
    const-string/jumbo v1, "rotation"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1058
    const-string/jumbo v1, "load"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1059
    sget-object v1, Lcom/nianticproject/ingress/service/NemesisService;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/service/i;

    .line 1060
    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/service/i;->a(Landroid/net/Uri;)V

    .line 1061
    if-eqz v2, :cond_5

    .line 1062
    invoke-static {p1}, Lcom/nianticproject/ingress/service/NemesisService;->j(Landroid/content/Intent;)V

    goto :goto_d

    .line 1069
    :pswitch_d
    const-string/jumbo v0, "NemesisService.onIntentProcessed(GetPortalImages)"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 1070
    const-string/jumbo v0, "guid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1071
    const-string/jumbo v0, "count"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1072
    const-string/jumbo v0, "cursor"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1073
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/rpc/u;

    .line 1074
    const-string/jumbo v2, "exception"

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1076
    if-nez v0, :cond_6

    if-nez v2, :cond_6

    .line 1078
    sget-object v0, Lcom/nianticproject/ingress/service/NemesisService;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/service/i;

    .line 1079
    invoke-interface {v0, v3, v1}, Lcom/nianticproject/ingress/service/i;->a(ILjava/lang/String;)V

    goto :goto_e

    .line 1083
    :cond_6
    sget-object v1, Lcom/nianticproject/ingress/service/NemesisService;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/service/i;

    .line 1084
    invoke-interface {v1, v3, v0}, Lcom/nianticproject/ingress/service/i;->a(ILcom/nianticproject/ingress/shared/rpc/u;)V

    goto :goto_f

    .line 1091
    :pswitch_e
    const-string/jumbo v2, "success"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1093
    if-nez v2, :cond_0

    .line 1097
    const-string/jumbo v2, "guid"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1098
    const-string/jumbo v3, "photoId"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1099
    const-string/jumbo v4, "add_vote"

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 1100
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nianticproject/ingress/common/g/p;->z()Lcom/nianticproject/ingress/i/b;

    move-result-object v5

    .line 1101
    if-nez v4, :cond_7

    :goto_10
    invoke-virtual {v5, v2, v3, v0}, Lcom/nianticproject/ingress/i/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_10

    .line 927
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 588
    :try_start_0
    const-string/jumbo v0, "NemesisService.onCreate"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 589
    invoke-super {p0}, Lcom/nianticproject/ingress/service/core/CoreService;->onCreate()V

    .line 590
    invoke-static {}, Lcom/nianticproject/ingress/NemesisApplication;->a()Lcom/nianticproject/ingress/NemesisApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/service/NemesisService;->e:Lcom/nianticproject/ingress/NemesisApplication;

    .line 591
    new-instance v0, Lcom/nianticproject/ingress/common/u/ah;

    iget-object v1, p0, Lcom/nianticproject/ingress/service/NemesisService;->e:Lcom/nianticproject/ingress/NemesisApplication;

    invoke-static {}, Lcom/nianticproject/ingress/NemesisApplication;->f()Lcom/nianticproject/ingress/common/u/b;

    move-result-object v1

    invoke-static {}, Lcom/nianticproject/ingress/ec;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/u/ah;-><init>(Lcom/nianticproject/ingress/common/u/b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/service/NemesisService;->f:Lcom/nianticproject/ingress/common/u/ah;

    .line 593
    iget-object v0, p0, Lcom/nianticproject/ingress/service/NemesisService;->f:Lcom/nianticproject/ingress/common/u/ah;

    new-instance v1, Lcom/nianticproject/ingress/common/u/ai;

    invoke-direct {v1}, Lcom/nianticproject/ingress/common/u/ai;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/u/ah;->a(Lcom/nianticproject/ingress/common/u/h;)Lcom/nianticproject/ingress/common/u/ah;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 596
    return-void

    .line 595
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method
