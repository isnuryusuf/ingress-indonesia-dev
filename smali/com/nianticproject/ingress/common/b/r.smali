.class public final Lcom/nianticproject/ingress/common/b/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/ui/Padding$PaddingProvider;


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/b/r;

.field private static final b:Lcom/google/a/c/ec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/ec",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/high16 v12, 0x40c0

    const/high16 v11, 0x4040

    const/high16 v10, 0x40a0

    const/high16 v9, 0x4080

    const/high16 v8, 0x4000

    .line 23
    new-instance v0, Lcom/nianticproject/ingress/common/b/r;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/b/r;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/b/r;->a:Lcom/nianticproject/ingress/common/b/r;

    .line 86
    invoke-static {}, Lcom/google/a/c/ec;->o()Lcom/google/a/c/ed;

    move-result-object v0

    .line 88
    const-string/jumbo v1, "ap-progress-border-aliens"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 89
    const-string/jumbo v1, "ap-progress-border-aliens"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 90
    const-string/jumbo v1, "ap-progress-border-aliens"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v11, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 91
    const-string/jumbo v1, "ap-progress-border-neutral"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 92
    const-string/jumbo v1, "ap-progress-border-neutral"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 93
    const-string/jumbo v1, "ap-progress-border-neutral"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v11, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 94
    const-string/jumbo v1, "ap-progress-border-resistance"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 95
    const-string/jumbo v1, "ap-progress-border-resistance"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 96
    const-string/jumbo v1, "ap-progress-border-resistance"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v11, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 97
    const-string/jumbo v1, "ap-progress-full-aliens"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 98
    const-string/jumbo v1, "ap-progress-full-aliens"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 99
    const-string/jumbo v1, "ap-progress-full-aliens"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 100
    const-string/jumbo v1, "ap-progress-full-neutral"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 101
    const-string/jumbo v1, "ap-progress-full-neutral"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 102
    const-string/jumbo v1, "ap-progress-full-neutral"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 103
    const-string/jumbo v1, "ap-progress-full-resistance"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 104
    const-string/jumbo v1, "ap-progress-full-resistance"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 105
    const-string/jumbo v1, "ap-progress-full-resistance"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 106
    const-string/jumbo v1, "avatar-color-picker-button-checked"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 107
    const-string/jumbo v1, "avatar-color-picker-button-checked"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 108
    const-string/jumbo v1, "avatar-color-picker-button-checked"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 109
    const-string/jumbo v1, "avatar-color-picker-button-down"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 110
    const-string/jumbo v1, "avatar-color-picker-button-down"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 111
    const-string/jumbo v1, "avatar-color-picker-button-down"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 112
    const-string/jumbo v1, "avatar-color-picker-button-up"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 113
    const-string/jumbo v1, "avatar-color-picker-button-up"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 114
    const-string/jumbo v1, "avatar-color-picker-button-up"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 115
    const-string/jumbo v1, "butter-bar-background"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4150

    invoke-direct {v3, v10, v12, v10, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 116
    const-string/jumbo v1, "butter-bar-background"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4120

    const/high16 v5, 0x4150

    const/high16 v6, 0x4120

    const/high16 v7, 0x41d0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 117
    const-string/jumbo v1, "butter-bar-background"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4120

    const/high16 v5, 0x4150

    const/high16 v6, 0x4120

    const/high16 v7, 0x41d0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 118
    const-string/jumbo v1, "card-disabled-selected"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v10, v10, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 119
    const-string/jumbo v1, "card-disabled-selected"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v10, v10, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 120
    const-string/jumbo v1, "card-disabled-selected"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v10, v10, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 121
    const-string/jumbo v1, "card-disabled-unselected"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v10, v10, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 122
    const-string/jumbo v1, "card-disabled-unselected"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v10, v10, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 123
    const-string/jumbo v1, "card-disabled-unselected"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v10, v10, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 124
    const-string/jumbo v1, "card-enabled-selected"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v10, v10, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 125
    const-string/jumbo v1, "card-enabled-selected"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v10, v10, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 126
    const-string/jumbo v1, "card-enabled-selected"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v10, v10, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 127
    const-string/jumbo v1, "card-enabled-unselected"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v10, v10, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 128
    const-string/jumbo v1, "card-enabled-unselected"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v10, v10, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 129
    const-string/jumbo v1, "card-enabled-unselected"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v10, v10, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 130
    const-string/jumbo v1, "cursor"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 131
    const-string/jumbo v1, "cursor"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 132
    const-string/jumbo v1, "cursor"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 133
    const-string/jumbo v1, "default_btn"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4110

    invoke-direct {v3, v10, v9, v10, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 134
    const-string/jumbo v1, "default_btn"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4198

    invoke-direct {v3, v12, v12, v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 135
    const-string/jumbo v1, "default_btn"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4110

    const/high16 v5, 0x4100

    const/high16 v6, 0x4110

    const/high16 v7, 0x41e0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 136
    const-string/jumbo v1, "default_btn_disabled"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4110

    invoke-direct {v3, v10, v9, v10, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 137
    const-string/jumbo v1, "default_btn_disabled"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4198

    invoke-direct {v3, v12, v12, v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 138
    const-string/jumbo v1, "default_btn_disabled"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4110

    const/high16 v5, 0x4100

    const/high16 v6, 0x4110

    const/high16 v7, 0x41e0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 139
    const-string/jumbo v1, "default_btn_down"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4110

    invoke-direct {v3, v10, v9, v10, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 140
    const-string/jumbo v1, "default_btn_down"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4198

    invoke-direct {v3, v12, v12, v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 141
    const-string/jumbo v1, "default_btn_down"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4110

    const/high16 v5, 0x4100

    const/high16 v6, 0x4110

    const/high16 v7, 0x41e0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 142
    const-string/jumbo v1, "default_btn_yellow"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4110

    invoke-direct {v3, v10, v9, v10, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 143
    const-string/jumbo v1, "default_btn_yellow"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4198

    invoke-direct {v3, v12, v12, v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 144
    const-string/jumbo v1, "default_btn_yellow"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4110

    const/high16 v5, 0x4100

    const/high16 v6, 0x4110

    const/high16 v7, 0x41e0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 145
    const-string/jumbo v1, "default_btn_yellow_disabled"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4110

    invoke-direct {v3, v10, v9, v10, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 146
    const-string/jumbo v1, "default_btn_yellow_disabled"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4198

    invoke-direct {v3, v12, v12, v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 147
    const-string/jumbo v1, "default_btn_yellow_disabled"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4110

    const/high16 v5, 0x4100

    const/high16 v6, 0x4110

    const/high16 v7, 0x41e0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 148
    const-string/jumbo v1, "default_btn_yellow_down"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4110

    invoke-direct {v3, v10, v9, v10, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 149
    const-string/jumbo v1, "default_btn_yellow_down"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4198

    invoke-direct {v3, v12, v12, v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 150
    const-string/jumbo v1, "default_btn_yellow_down"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4110

    const/high16 v5, 0x4100

    const/high16 v6, 0x4110

    const/high16 v7, 0x41e0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 151
    const-string/jumbo v1, "default-combo"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4180

    invoke-direct {v3, v10, v9, v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 152
    const-string/jumbo v1, "default-combo"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4180

    invoke-direct {v3, v10, v9, v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 153
    const-string/jumbo v1, "default-combo"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4180

    invoke-direct {v3, v10, v9, v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 154
    const-string/jumbo v1, "default-combo-selection"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 155
    const-string/jumbo v1, "default-combo-selection"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 156
    const-string/jumbo v1, "default-combo-selection"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 157
    const-string/jumbo v1, "default-message-window"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v11, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 158
    const-string/jumbo v1, "default-message-window"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v11, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 159
    const-string/jumbo v1, "default-message-window"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v11, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 160
    const-string/jumbo v1, "default-pane"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v8, v11, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 161
    const-string/jumbo v1, "default-pane"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v8, v11, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 162
    const-string/jumbo v1, "default-pane"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v8, v11, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 163
    const-string/jumbo v1, "default-panel"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v10, v12, v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 164
    const-string/jumbo v1, "default-panel"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4100

    const/high16 v5, 0x4110

    const/high16 v6, 0x4100

    const/high16 v7, 0x4110

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 165
    const-string/jumbo v1, "default-panel"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4100

    const/high16 v5, 0x4110

    const/high16 v6, 0x4100

    const/high16 v7, 0x4110

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 166
    const-string/jumbo v1, "default-pane-noborder"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    invoke-direct {v3, v4, v5, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 167
    const-string/jumbo v1, "default-pane-noborder"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    invoke-direct {v3, v4, v5, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 168
    const-string/jumbo v1, "default-pane-noborder"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    invoke-direct {v3, v4, v5, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 169
    const-string/jumbo v1, "default-rect"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 170
    const-string/jumbo v1, "default-rect"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 171
    const-string/jumbo v1, "default-rect"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 172
    const-string/jumbo v1, "default-rect-down"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 173
    const-string/jumbo v1, "default-rect-down"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 174
    const-string/jumbo v1, "default-rect-down"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 175
    const-string/jumbo v1, "default-rect-pad"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v8, v11, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 176
    const-string/jumbo v1, "default-rect-pad"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v8, v11, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 177
    const-string/jumbo v1, "default-rect-pad"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v8, v11, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 178
    const-string/jumbo v1, "default-round"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 179
    const-string/jumbo v1, "default-round"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 180
    const-string/jumbo v1, "default-round"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 181
    const-string/jumbo v1, "default-round-down"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v12, v12, v12, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 182
    const-string/jumbo v1, "default-round-down"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v12, v12, v12, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 183
    const-string/jumbo v1, "default-round-down"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v12, v12, v12, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 184
    const-string/jumbo v1, "default-slider"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 185
    const-string/jumbo v1, "default-slider"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 186
    const-string/jumbo v1, "default-slider"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 187
    const-string/jumbo v1, "default-slider-knob"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 188
    const-string/jumbo v1, "default-slider-knob"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 189
    const-string/jumbo v1, "default-slider-knob"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 190
    const-string/jumbo v1, "default-splitpane"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v8, v11, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 191
    const-string/jumbo v1, "default-splitpane"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v8, v11, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 192
    const-string/jumbo v1, "default-splitpane"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v8, v11, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 193
    const-string/jumbo v1, "default-splitpane-vertical"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 194
    const-string/jumbo v1, "default-splitpane-vertical"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 195
    const-string/jumbo v1, "default-splitpane-vertical"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 196
    const-string/jumbo v1, "default-window"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 197
    const-string/jumbo v1, "default-window"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 198
    const-string/jumbo v1, "default-window"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 199
    const-string/jumbo v1, "default-window-no-outline"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 200
    const-string/jumbo v1, "default-window-no-outline"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 201
    const-string/jumbo v1, "default-window-no-outline"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 202
    const-string/jumbo v1, "default-window-trans"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 203
    const-string/jumbo v1, "default-window-trans"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 204
    const-string/jumbo v1, "default-window-trans"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 205
    const-string/jumbo v1, "details-menu-bg"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 206
    const-string/jumbo v1, "details-menu-bg"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 207
    const-string/jumbo v1, "details-menu-bg"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 208
    const-string/jumbo v1, "details-menu-title-bar"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x4238

    invoke-direct {v3, v8, v4, v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 209
    const-string/jumbo v1, "details-menu-title-bar"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x4238

    invoke-direct {v3, v8, v4, v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 210
    const-string/jumbo v1, "details-menu-title-bar"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x4238

    invoke-direct {v3, v8, v4, v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 211
    const-string/jumbo v1, "dialogue-grad"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 212
    const-string/jumbo v1, "dialogue-grad"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 213
    const-string/jumbo v1, "dialogue-grad"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 214
    const-string/jumbo v1, "energy-bar-border-white"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 215
    const-string/jumbo v1, "energy-bar-border-white"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 216
    const-string/jumbo v1, "energy-bar-border-white"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 217
    const-string/jumbo v1, "energy-bar-full-replace"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 218
    const-string/jumbo v1, "energy-bar-full-replace"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 219
    const-string/jumbo v1, "energy-bar-full-replace"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 220
    const-string/jumbo v1, "expinfo-bg"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4180

    invoke-direct {v3, v8, v8, v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 221
    const-string/jumbo v1, "expinfo-bg"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4180

    invoke-direct {v3, v8, v8, v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 222
    const-string/jumbo v1, "expinfo-bg"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4180

    invoke-direct {v3, v8, v8, v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 223
    const-string/jumbo v1, "gradient-bg"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x41a8

    invoke-direct {v3, v9, v9, v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 224
    const-string/jumbo v1, "gradient-bg"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x41a8

    invoke-direct {v3, v9, v9, v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 225
    const-string/jumbo v1, "gradient-bg"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x41a8

    invoke-direct {v3, v9, v9, v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 226
    const-string/jumbo v1, "gradient-bg-down"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x41a8

    invoke-direct {v3, v9, v9, v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 227
    const-string/jumbo v1, "gradient-bg-down"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x41a8

    invoke-direct {v3, v9, v9, v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 228
    const-string/jumbo v1, "gradient-bg-down"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x41a8

    invoke-direct {v3, v9, v9, v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 229
    const-string/jumbo v1, "hud-rect-transparent"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v11, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 230
    const-string/jumbo v1, "hud-rect-transparent"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v11, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 231
    const-string/jumbo v1, "hud-rect-transparent"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v11, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 232
    const-string/jumbo v1, "hud-rect-transparent-down"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v11, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 233
    const-string/jumbo v1, "hud-rect-transparent-down"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v11, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 234
    const-string/jumbo v1, "hud-rect-transparent-down"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v11, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 235
    const-string/jumbo v1, "item-button-outline"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4140

    invoke-direct {v3, v12, v12, v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 236
    const-string/jumbo v1, "item-button-outline"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4140

    const/high16 v5, 0x4130

    const/high16 v6, 0x4140

    const/high16 v7, 0x41c8

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 237
    const-string/jumbo v1, "item-button-outline"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4180

    const/high16 v5, 0x4180

    const/high16 v6, 0x4180

    const/high16 v7, 0x4218

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 238
    const-string/jumbo v1, "item-button-outline-down"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4140

    invoke-direct {v3, v12, v12, v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 239
    const-string/jumbo v1, "item-button-outline-down"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4140

    const/high16 v5, 0x4130

    const/high16 v6, 0x4140

    const/high16 v7, 0x41c8

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 240
    const-string/jumbo v1, "item-button-outline-down"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4180

    const/high16 v5, 0x4180

    const/high16 v6, 0x4180

    const/high16 v7, 0x4218

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 241
    const-string/jumbo v1, "item-button-selected"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4190

    const/high16 v5, 0x4190

    const/high16 v6, 0x4264

    const/high16 v7, 0x4218

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 242
    const-string/jumbo v1, "item-button-selection"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x41e0

    const/high16 v5, 0x41c0

    const/high16 v6, 0x41e0

    const/high16 v7, 0x41d0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 243
    const-string/jumbo v1, "item-button-selection"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x41f0

    const/high16 v5, 0x4180

    const/high16 v6, 0x41f0

    const/high16 v7, 0x4218

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 244
    const-string/jumbo v1, "item-button-selection"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4214

    const/high16 v5, 0x41f8

    const/high16 v6, 0x4214

    const/high16 v7, 0x4204

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 245
    const-string/jumbo v1, "item-card-bg"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v10, v10, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 246
    const-string/jumbo v1, "item-card-bg"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v10, v10, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 247
    const-string/jumbo v1, "item-card-bg"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v10, v10, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 248
    const-string/jumbo v1, "item-card-bg-disabled"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v10, v10, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 249
    const-string/jumbo v1, "item-card-bg-disabled"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v10, v10, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 250
    const-string/jumbo v1, "item-card-bg-disabled"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v10, v10, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 251
    const-string/jumbo v1, "item-card-bg-disabled-down"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v10, v10, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 252
    const-string/jumbo v1, "item-card-bg-disabled-down"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v10, v10, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 253
    const-string/jumbo v1, "item-card-bg-disabled-down"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v10, v10, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 254
    const-string/jumbo v1, "item-card-bg-down"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v10, v10, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 255
    const-string/jumbo v1, "item-card-bg-down"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v10, v10, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 256
    const-string/jumbo v1, "item-card-bg-down"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v10, v10, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 257
    const-string/jumbo v1, "item-disabled-highlight"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4150

    invoke-direct {v3, v10, v12, v10, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 258
    const-string/jumbo v1, "item-disabled-highlight"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4198

    invoke-direct {v3, v12, v12, v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 259
    const-string/jumbo v1, "item-disabled-highlight"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4198

    invoke-direct {v3, v12, v12, v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 260
    const-string/jumbo v1, "item-disabled-selected"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4130

    const/high16 v5, 0x4130

    const/high16 v6, 0x4130

    const/high16 v7, 0x4130

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 261
    const-string/jumbo v1, "item-disabled-selected"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4160

    const/high16 v5, 0x4160

    const/high16 v6, 0x4160

    const/high16 v7, 0x4160

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 262
    const-string/jumbo v1, "item-disabled-selected"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x41a0

    const/high16 v5, 0x41a0

    const/high16 v6, 0x41a0

    const/high16 v7, 0x41a8

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 263
    const-string/jumbo v1, "item-disabled-unselected"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4130

    const/high16 v5, 0x4130

    const/high16 v6, 0x4130

    const/high16 v7, 0x4130

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 264
    const-string/jumbo v1, "item-disabled-unselected"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4160

    const/high16 v5, 0x4160

    const/high16 v6, 0x4160

    const/high16 v7, 0x4160

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 265
    const-string/jumbo v1, "item-disabled-unselected"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x41a8

    const/high16 v5, 0x41a8

    const/high16 v6, 0x41a8

    const/high16 v7, 0x41a0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 266
    const-string/jumbo v1, "item-enabled-selected"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4130

    const/high16 v5, 0x4130

    const/high16 v6, 0x4130

    const/high16 v7, 0x4130

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 267
    const-string/jumbo v1, "item-enabled-selected"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4160

    const/high16 v5, 0x4160

    const/high16 v6, 0x4160

    const/high16 v7, 0x4160

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 268
    const-string/jumbo v1, "item-enabled-selected"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x41a0

    const/high16 v5, 0x41a0

    const/high16 v6, 0x41a0

    const/high16 v7, 0x41a0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 269
    const-string/jumbo v1, "item-enabled-unselected"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4130

    const/high16 v5, 0x4130

    const/high16 v6, 0x4120

    const/high16 v7, 0x4120

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 270
    const-string/jumbo v1, "item-enabled-unselected"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4160

    const/high16 v5, 0x4160

    const/high16 v6, 0x4160

    const/high16 v7, 0x4160

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 271
    const-string/jumbo v1, "item-enabled-unselected"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x41a0

    const/high16 v5, 0x41a0

    const/high16 v6, 0x41a0

    const/high16 v7, 0x41a0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 272
    const-string/jumbo v1, "level-background"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    invoke-direct {v3, v4, v5, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 273
    const-string/jumbo v1, "level-background"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    invoke-direct {v3, v4, v5, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 274
    const-string/jumbo v1, "level-background"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    invoke-direct {v3, v4, v5, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 275
    const-string/jumbo v1, "link-mode"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 276
    const-string/jumbo v1, "link-mode"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 277
    const-string/jumbo v1, "link-mode"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    invoke-direct {v3, v4, v8, v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 278
    const-string/jumbo v1, "menu-item-button"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4110

    invoke-direct {v3, v10, v9, v10, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 279
    const-string/jumbo v1, "menu-item-button"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4198

    invoke-direct {v3, v12, v12, v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 280
    const-string/jumbo v1, "menu-item-button"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4198

    invoke-direct {v3, v12, v12, v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 281
    const-string/jumbo v1, "menu-item-button-disabled"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4110

    invoke-direct {v3, v10, v9, v10, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 282
    const-string/jumbo v1, "menu-item-button-disabled"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4198

    invoke-direct {v3, v12, v12, v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 283
    const-string/jumbo v1, "menu-item-button-disabled"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4198

    invoke-direct {v3, v12, v12, v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 284
    const-string/jumbo v1, "menu-item-button-down"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4110

    invoke-direct {v3, v10, v9, v10, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 285
    const-string/jumbo v1, "menu-item-button-down"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4198

    invoke-direct {v3, v12, v12, v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 286
    const-string/jumbo v1, "menu-item-button-down"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4198

    invoke-direct {v3, v12, v12, v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 287
    const-string/jumbo v1, "message-title"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x40e0

    const/high16 v5, 0x4100

    invoke-direct {v3, v4, v5, v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 288
    const-string/jumbo v1, "message-title"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x40e0

    const/high16 v5, 0x4100

    invoke-direct {v3, v4, v5, v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 289
    const-string/jumbo v1, "message-title"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x40e0

    const/high16 v5, 0x4100

    invoke-direct {v3, v4, v5, v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 290
    const-string/jumbo v1, "message-window"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v10, v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 291
    const-string/jumbo v1, "message-window"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v10, v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 292
    const-string/jumbo v1, "message-window"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v10, v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 293
    const-string/jumbo v1, "message-window-highlight"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v10, v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 294
    const-string/jumbo v1, "message-window-highlight"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v10, v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 295
    const-string/jumbo v1, "message-window-highlight"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v10, v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 296
    const-string/jumbo v1, "nav-button"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v9, v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 297
    const-string/jumbo v1, "nav-button"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v10, v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 298
    const-string/jumbo v1, "nav-button"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v10, v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 299
    const-string/jumbo v1, "nav-button-clear"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v9, v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 300
    const-string/jumbo v1, "nav-button-clear"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v10, v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 301
    const-string/jumbo v1, "nav-button-clear"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v10, v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 302
    const-string/jumbo v1, "nav-button-clear-down"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v9, v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 303
    const-string/jumbo v1, "nav-button-clear-down"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v10, v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 304
    const-string/jumbo v1, "nav-button-clear-down"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v10, v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 305
    const-string/jumbo v1, "nav-button-down"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v9, v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 306
    const-string/jumbo v1, "nav-button-down"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v10, v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 307
    const-string/jumbo v1, "nav-button-down"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v10, v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 308
    const-string/jumbo v1, "negative_btn_background_default"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x41d8

    const/high16 v5, 0x41d8

    invoke-direct {v3, v4, v10, v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 309
    const-string/jumbo v1, "negative_btn_background_default"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4234

    const/high16 v5, 0x40e0

    const/high16 v6, 0x4234

    invoke-direct {v3, v4, v5, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 310
    const-string/jumbo v1, "negative_btn_background_default"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4234

    const/high16 v5, 0x40e0

    const/high16 v6, 0x4234

    invoke-direct {v3, v4, v5, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 311
    const-string/jumbo v1, "negative_btn_background_disabled"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x41d8

    const/high16 v5, 0x41d8

    invoke-direct {v3, v4, v10, v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 312
    const-string/jumbo v1, "negative_btn_background_disabled"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4234

    const/high16 v5, 0x40e0

    const/high16 v6, 0x4234

    invoke-direct {v3, v4, v5, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 313
    const-string/jumbo v1, "negative_btn_background_disabled"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4234

    const/high16 v5, 0x40e0

    const/high16 v6, 0x4234

    invoke-direct {v3, v4, v5, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 314
    const-string/jumbo v1, "negative_btn_background_pressed"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x41d8

    const/high16 v5, 0x41d8

    invoke-direct {v3, v4, v10, v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 315
    const-string/jumbo v1, "negative_btn_background_pressed"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4234

    const/high16 v5, 0x40e0

    const/high16 v6, 0x4234

    invoke-direct {v3, v4, v5, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 316
    const-string/jumbo v1, "negative_btn_background_pressed"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4234

    const/high16 v5, 0x40e0

    const/high16 v6, 0x4234

    invoke-direct {v3, v4, v5, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 317
    const-string/jumbo v1, "opaque-outline"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v11, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 318
    const-string/jumbo v1, "opaque-outline"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v11, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 319
    const-string/jumbo v1, "opaque-outline"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v11, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 320
    const-string/jumbo v1, "ops_bg"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v12, v12, v12, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 321
    const-string/jumbo v1, "ops_bg"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v12, v12, v12, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 322
    const-string/jumbo v1, "ops_bg"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v12, v12, v12, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 323
    const-string/jumbo v1, "ops-title-background"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v11, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 324
    const-string/jumbo v1, "ops-title-background"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v11, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 325
    const-string/jumbo v1, "ops-title-background"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v11, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 326
    const-string/jumbo v1, "owned-background"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 327
    const-string/jumbo v1, "owned-background"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 328
    const-string/jumbo v1, "owned-background"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 329
    const-string/jumbo v1, "owned-item-button-outline"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4140

    invoke-direct {v3, v12, v12, v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 330
    const-string/jumbo v1, "owned-item-button-outline"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4140

    const/high16 v5, 0x4130

    const/high16 v6, 0x4140

    const/high16 v7, 0x41c8

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 331
    const-string/jumbo v1, "owned-item-button-outline"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4180

    const/high16 v5, 0x4180

    const/high16 v6, 0x4180

    const/high16 v7, 0x4218

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 332
    const-string/jumbo v1, "owned-item-button-outline-down"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4140

    invoke-direct {v3, v12, v12, v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 333
    const-string/jumbo v1, "owned-item-button-outline-down"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4140

    const/high16 v5, 0x4130

    const/high16 v6, 0x4140

    const/high16 v7, 0x41c8

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 334
    const-string/jumbo v1, "owned-item-button-outline-down"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4180

    const/high16 v5, 0x4180

    const/high16 v6, 0x4180

    const/high16 v7, 0x4218

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 335
    const-string/jumbo v1, "plain-background"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 336
    const-string/jumbo v1, "plain-background"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 337
    const-string/jumbo v1, "plain-background"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 338
    const-string/jumbo v1, "player-status-bar-background"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 339
    const-string/jumbo v1, "player-status-bar-background"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 340
    const-string/jumbo v1, "player-status-bar-background"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 341
    const-string/jumbo v1, "portal-info-dialog-title-bg"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x4140

    invoke-direct {v3, v11, v4, v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 342
    const-string/jumbo v1, "portal-info-dialog-title-bg"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x4140

    invoke-direct {v3, v11, v4, v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 343
    const-string/jumbo v1, "portal-info-dialog-title-bg"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x4140

    invoke-direct {v3, v11, v4, v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 344
    const-string/jumbo v1, "portal-key-chooser-handle"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x40e0

    const/high16 v5, 0x4150

    invoke-direct {v3, v4, v12, v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 345
    const-string/jumbo v1, "portal-key-chooser-handle"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4110

    const/high16 v5, 0x4130

    const/high16 v6, 0x4110

    const/high16 v7, 0x41b0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 346
    const-string/jumbo v1, "portal-key-chooser-handle"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4110

    const/high16 v5, 0x4130

    const/high16 v6, 0x4110

    const/high16 v7, 0x41b0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 347
    const-string/jumbo v1, "portal-key-chooser-handle-down"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x40e0

    const/high16 v5, 0x4150

    invoke-direct {v3, v4, v12, v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 348
    const-string/jumbo v1, "portal-key-chooser-handle-down"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4110

    const/high16 v5, 0x4130

    const/high16 v6, 0x4110

    const/high16 v7, 0x41b0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 349
    const-string/jumbo v1, "portal-key-chooser-handle-down"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4110

    const/high16 v5, 0x4130

    const/high16 v6, 0x4110

    const/high16 v7, 0x41b0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 350
    const-string/jumbo v1, "positive_btn_background_default"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x41d8

    const/high16 v5, 0x41d8

    invoke-direct {v3, v4, v10, v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 351
    const-string/jumbo v1, "positive_btn_background_default"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4234

    const/high16 v5, 0x40e0

    const/high16 v6, 0x4234

    invoke-direct {v3, v4, v5, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 352
    const-string/jumbo v1, "positive_btn_background_default"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4234

    const/high16 v5, 0x40e0

    const/high16 v6, 0x4234

    invoke-direct {v3, v4, v5, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 353
    const-string/jumbo v1, "positive_btn_background_disabled"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x41d8

    const/high16 v5, 0x41d8

    invoke-direct {v3, v4, v10, v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 354
    const-string/jumbo v1, "positive_btn_background_disabled"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4234

    const/high16 v5, 0x40e0

    const/high16 v6, 0x4234

    invoke-direct {v3, v4, v5, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 355
    const-string/jumbo v1, "positive_btn_background_disabled"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4234

    const/high16 v5, 0x40e0

    const/high16 v6, 0x4234

    invoke-direct {v3, v4, v5, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 356
    const-string/jumbo v1, "positive_btn_background_pressed"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x41d8

    const/high16 v5, 0x41d8

    invoke-direct {v3, v4, v10, v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 357
    const-string/jumbo v1, "positive_btn_background_pressed"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4234

    const/high16 v5, 0x40e0

    const/high16 v6, 0x4234

    invoke-direct {v3, v4, v5, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 358
    const-string/jumbo v1, "positive_btn_background_pressed"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4234

    const/high16 v5, 0x40e0

    const/high16 v6, 0x4234

    invoke-direct {v3, v4, v5, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 359
    const-string/jumbo v1, "profiles-category"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 360
    const-string/jumbo v1, "profiles-category"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 361
    const-string/jumbo v1, "profiles-category"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 362
    const-string/jumbo v1, "profiles-category-background"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 363
    const-string/jumbo v1, "profiles-category-background"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 364
    const-string/jumbo v1, "profiles-category-background"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 365
    const-string/jumbo v1, "profiles-scrollpane-knob"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4180

    invoke-direct {v3, v9, v9, v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 366
    const-string/jumbo v1, "profiles-scrollpane-knob"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4180

    invoke-direct {v3, v9, v9, v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 367
    const-string/jumbo v1, "profiles-scrollpane-knob"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4180

    invoke-direct {v3, v9, v9, v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 368
    const-string/jumbo v1, "vertical-separator"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 369
    const-string/jumbo v1, "vertical-separator"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 370
    const-string/jumbo v1, "vertical-separator"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 371
    const-string/jumbo v1, "remote-portal-bracket"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v11, v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 372
    const-string/jumbo v1, "remote-portal-bracket"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v11, v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 373
    const-string/jumbo v1, "remote-portal-bracket"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v11, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 374
    const-string/jumbo v1, "remote-portal-hud-bg"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 375
    const-string/jumbo v1, "remote-portal-hud-bg"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 376
    const-string/jumbo v1, "remote-portal-hud-bg"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 377
    const-string/jumbo v1, "remote-portal-label"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 378
    const-string/jumbo v1, "remote-portal-label"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 379
    const-string/jumbo v1, "remote-portal-label"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 380
    const-string/jumbo v1, "score-enlightened-background"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4140

    invoke-direct {v3, v11, v9, v11, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 381
    const-string/jumbo v1, "score-enlightened-background"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4198

    invoke-direct {v3, v12, v12, v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 382
    const-string/jumbo v1, "score-enlightened-background"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4198

    invoke-direct {v3, v12, v12, v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 383
    const-string/jumbo v1, "score-enlightened-background-down"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4140

    invoke-direct {v3, v11, v9, v11, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 384
    const-string/jumbo v1, "score-enlightened-background-down"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4198

    invoke-direct {v3, v12, v12, v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 385
    const-string/jumbo v1, "score-enlightened-background-down"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4198

    invoke-direct {v3, v12, v12, v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 386
    const-string/jumbo v1, "score-resistance-background"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4140

    invoke-direct {v3, v11, v9, v11, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 387
    const-string/jumbo v1, "score-resistance-background"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4198

    invoke-direct {v3, v12, v12, v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 388
    const-string/jumbo v1, "score-resistance-background"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4198

    invoke-direct {v3, v12, v12, v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 389
    const-string/jumbo v1, "score-resistance-background-down"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4140

    invoke-direct {v3, v11, v9, v11, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 390
    const-string/jumbo v1, "score-resistance-background-down"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4198

    invoke-direct {v3, v12, v12, v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 391
    const-string/jumbo v1, "score-resistance-background-down"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4198

    invoke-direct {v3, v12, v12, v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 392
    const-string/jumbo v1, "scroll-bg"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v10, v10, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 393
    const-string/jumbo v1, "scroll-bg"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v10, v10, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 394
    const-string/jumbo v1, "scroll-bg"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v10, v10, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 395
    const-string/jumbo v1, "scroll-knob"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v10, v10, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 396
    const-string/jumbo v1, "scroll-knob"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v10, v10, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 397
    const-string/jumbo v1, "scroll-knob"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v10, v10, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 398
    const-string/jumbo v1, "stats-pane"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v11, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 399
    const-string/jumbo v1, "stats-pane"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 400
    const-string/jumbo v1, "stats-pane"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 401
    const-string/jumbo v1, "stats-rarity-bg"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v10, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 402
    const-string/jumbo v1, "stats-rarity-bg"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4100

    invoke-direct {v3, v8, v8, v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 403
    const-string/jumbo v1, "stats-rarity-bg"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4130

    invoke-direct {v3, v8, v8, v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 404
    const-string/jumbo v1, "status-gradient-vert"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 405
    const-string/jumbo v1, "status-gradient-vert"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 406
    const-string/jumbo v1, "status-gradient-vert"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 407
    const-string/jumbo v1, "subtle-dialog-bg"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v11, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 408
    const-string/jumbo v1, "subtle-dialog-bg"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 409
    const-string/jumbo v1, "subtle-dialog-bg"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 410
    const-string/jumbo v1, "tab-default"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v10, v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 411
    const-string/jumbo v1, "tab-default"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v12, v12, v12, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 412
    const-string/jumbo v1, "tab-default"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v12, v12, v12, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 413
    const-string/jumbo v1, "tab-pressed"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v10, v10, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 414
    const-string/jumbo v1, "tab-pressed"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v12, v12, v12, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 415
    const-string/jumbo v1, "tab-pressed"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v12, v12, v12, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 416
    const-string/jumbo v1, "tab-selected"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v11, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 417
    const-string/jumbo v1, "tab-selected"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v11, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 418
    const-string/jumbo v1, "tab-selected"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v11, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 419
    const-string/jumbo v1, "textfield"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v10, v10, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 420
    const-string/jumbo v1, "textfield"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v10, v10, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 421
    const-string/jumbo v1, "textfield"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v10, v10, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 422
    const-string/jumbo v1, "transparent-no-outline"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 423
    const-string/jumbo v1, "transparent-no-outline"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 424
    const-string/jumbo v1, "transparent-no-outline"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 425
    const-string/jumbo v1, "transparent-no-outline-75"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 426
    const-string/jumbo v1, "transparent-no-outline-75"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 427
    const-string/jumbo v1, "transparent-no-outline-75"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 428
    const-string/jumbo v1, "transparent-outline"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v11, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 429
    const-string/jumbo v1, "transparent-outline"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v11, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 430
    const-string/jumbo v1, "transparent-outline"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v11, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 431
    const-string/jumbo v1, "transparent-outline-red"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v11, v11, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 432
    const-string/jumbo v1, "transparent-outline-red"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 433
    const-string/jumbo v1, "transparent-outline-red"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 434
    const-string/jumbo v1, "tutorial_dialog"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 435
    const-string/jumbo v1, "tutorial_dialog"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 436
    const-string/jumbo v1, "tutorial_dialog"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v12, v12, v12, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 437
    const-string/jumbo v1, "unowned-background"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 438
    const-string/jumbo v1, "unowned-background"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 439
    const-string/jumbo v1, "unowned-background"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 440
    const-string/jumbo v1, "xm-bar-zero"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v10, v10, v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 441
    const-string/jumbo v1, "xm-bar-zero"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4100

    const/high16 v5, 0x4100

    const/high16 v6, 0x4100

    const/high16 v7, 0x4100

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 442
    const-string/jumbo v1, "xm-bar-zero"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    const/high16 v4, 0x4100

    const/high16 v5, 0x4100

    const/high16 v6, 0x4100

    const/high16 v7, 0x4100

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 443
    const-string/jumbo v1, "xm-progress-border"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v12, v12, v12, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 444
    const-string/jumbo v1, "xm-progress-border"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v12, v12, v12, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 445
    const-string/jumbo v1, "xm-progress-border"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v12, v12, v12, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 446
    const-string/jumbo v1, "xm-progress-full-aliens"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 447
    const-string/jumbo v1, "xm-progress-full-aliens"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 448
    const-string/jumbo v1, "xm-progress-full-aliens"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 449
    const-string/jumbo v1, "xm-progress-full-neutral"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 450
    const-string/jumbo v1, "xm-progress-full-neutral"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 451
    const-string/jumbo v1, "xm-progress-full-neutral"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 452
    const-string/jumbo v1, "xm-progress-full-resistance"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 453
    const-string/jumbo v1, "xm-progress-full-resistance"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 454
    const-string/jumbo v1, "xm-progress-full-resistance"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 455
    const-string/jumbo v1, "xm-progress-pending"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 456
    const-string/jumbo v1, "xm-progress-pending"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 457
    const-string/jumbo v1, "xm-progress-pending"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 458
    const-string/jumbo v1, "yellow-butter-bar"

    const-string/jumbo v2, "data"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 459
    const-string/jumbo v1, "yellow-butter-bar"

    const-string/jumbo v2, "data-xhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 460
    const-string/jumbo v1, "yellow-butter-bar"

    const-string/jumbo v2, "data-xxhdpi"

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/c/ed;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;

    .line 462
    invoke-virtual {v0}, Lcom/google/a/c/ed;->a()Lcom/google/a/c/ec;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/b/r;->b:Lcom/google/a/c/ec;

    .line 463
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static a()Lcom/nianticproject/ingress/common/b/r;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/nianticproject/ingress/common/b/r;->a:Lcom/nianticproject/ingress/common/b/r;

    return-object v0
.end method


# virtual methods
.method public final getPadding(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;
    .locals 2
    .parameter

    .prologue
    .line 77
    sget-object v0, Lcom/nianticproject/ingress/common/b/r;->b:Lcom/google/a/c/ec;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/b/r;->c:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/google/a/c/ec;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    .line 78
    if-nez v0, :cond_0

    .line 79
    sget-object v0, Lcom/nianticproject/ingress/common/b/r;->b:Lcom/google/a/c/ec;

    const-string/jumbo v1, "data"

    invoke-virtual {v0, p1, v1}, Lcom/google/a/c/ec;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    .line 81
    :cond_0
    return-object v0
.end method
